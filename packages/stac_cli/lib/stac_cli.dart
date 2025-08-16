import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

class StacCli {
  final bool verbose;

  StacCli({this.verbose = false});

  Future<void> build() async {
    print('🚀 Starting STAC build process...');

    // Find the project root (where pubspec.yaml exists)
    final projectRoot = _findProjectRoot();
    if (projectRoot == null) {
      throw Exception(
        'Could not find project root. Make sure you\'re in a Flutter project directory.',
      );
    }

    _log('Project root: $projectRoot');

    // Find the stac directory
    final stacDir = Directory(path.join(projectRoot, 'stac'));
    if (!stacDir.existsSync()) {
      throw Exception('STAC directory not found at ${stacDir.path}');
    }

    print('📁 Found STAC directory: ${stacDir.path}');

    // Create .stac_build directory
    final buildDir = Directory(path.join(stacDir.path, '.stac_build'));
    if (!buildDir.existsSync()) {
      buildDir.createSync(recursive: true);
    }

    // Find all .dart files in stac directory
    final dartFiles = _findDartFiles(stacDir);
    print('📝 Found ${dartFiles.length} Dart file(s) to process');

    int functionsProcessed = 0;

    // Process each file
    for (final file in dartFiles) {
      final count = await _processStacFile(file, buildDir, projectRoot);
      functionsProcessed += count;
    }

    print('✅ STAC build completed successfully!');
    print(
      '📊 Processed $functionsProcessed function(s) and generated JSON files',
    );
  }

  Future<void> deploy({
    String? projectId,
    String? userId,
    String? apiUrl,
  }) async {
    print('🚀 Starting STAC deployment...');

    // Find the project root and build directory
    final projectRoot = _findProjectRoot();
    if (projectRoot == null) {
      throw Exception(
        'Could not find project root. Make sure you\'re in a Flutter project directory.',
      );
    }

    final buildDir = Directory(path.join(projectRoot, 'stac', '.stac_build'));
    if (!buildDir.existsSync()) {
      throw Exception('Build directory not found. Run "stac build" first.');
    }

    // Load configuration
    final config = await _loadDeployConfig(projectRoot);

    final finalProjectId =
        projectId ?? config['project_id'] ?? _promptForInput('Project ID');
    final finalUserId =
        userId ?? config['user_id'] ?? _promptForInput('User ID');
    final finalApiUrl =
        apiUrl ??
        config['api_url'] ??
        'https://us-central1-stac-7ad77.cloudfunctions.net/upsertJson';

    _log('Using API URL: $finalApiUrl');
    _log('Project ID: $finalProjectId');
    _log('User ID: $finalUserId');

    // API handles create/update automatically based on screenName

    // Find all JSON files
    final jsonFiles = _findJsonFiles(buildDir);
    if (jsonFiles.isEmpty) {
      throw Exception(
        'No JSON files found in build directory. Run "stac build" first.',
      );
    }

    print('📄 Found ${jsonFiles.length} JSON file(s) to deploy');

    try {
      // Deploy each file individually
      print('🌐 Deploying to STAC cloud...');

      int successCount = 0;
      int failCount = 0;
      int createdCount = 0;

      for (final file in jsonFiles) {
        final fileName = path.basename(file.path).replaceAll('.json', '');
        final jsonContent = await file.readAsString();
        final screenName = fileName;

        // Always use screenName - let the API handle create vs update
        print('   📝 Deploying $fileName...');

        final requestBody = {
          'projectId': finalProjectId,
          'screenName': screenName,
          'jsonString': jsonContent,
          'userId': finalUserId,
        };

        final response = await http.post(
          Uri.parse(finalApiUrl),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(requestBody),
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          print('     ✅ Success');
          successCount++;
          createdCount++;

          _log('Successfully deployed $screenName');
        } else {
          print('     ❌ Failed (${response.statusCode})');
          if (verbose) {
            print('     Response: ${response.body}');
          }
          failCount++;
        }
      }

      if (failCount == 0) {
        print('✅ Deployment completed successfully!');
        print('📊 Deployed $createdCount file(s)');
      } else {
        print('⚠️  Deployment completed with issues');
        print('📊 Success: $successCount, Failed: $failCount');
      }
    } catch (e) {
      if (e is FormatException) {
        throw Exception('Deployment failed: Invalid server response');
      }
      rethrow;
    }
  }

  Future<Map<String, dynamic>> _loadDeployConfig(String projectRoot) async {
    final configFile = File(path.join(projectRoot, '.stacrc'));
    if (!configFile.existsSync()) {
      return {};
    }

    try {
      final configContent = await configFile.readAsString();
      return jsonDecode(configContent) as Map<String, dynamic>;
    } catch (e) {
      _log('Warning: Could not read .stacrc file: $e');
      return {};
    }
  }

  String _promptForInput(String prompt, {bool hidden = false}) {
    stdout.write('$prompt: ');
    if (hidden) {
      stdin.echoMode = false;
    }
    final input = stdin.readLineSync() ?? '';
    if (hidden) {
      stdin.echoMode = true;
      print(''); // New line after hidden input
    }
    return input.trim();
  }

  List<File> _findJsonFiles(Directory directory) {
    final jsonFiles = <File>[];

    for (final entity in directory.listSync()) {
      if (entity is File && entity.path.endsWith('.json')) {
        jsonFiles.add(entity);
      }
    }

    return jsonFiles;
  }

  String? _findProjectRoot() {
    Directory current = Directory.current;

    while (true) {
      final pubspecFile = File(path.join(current.path, 'pubspec.yaml'));
      if (pubspecFile.existsSync()) {
        return current.path;
      }

      final parent = current.parent;
      if (parent.path == current.path) {
        // Reached filesystem root
        break;
      }
      current = parent;
    }

    return null;
  }

  List<File> _findDartFiles(Directory directory) {
    final dartFiles = <File>[];

    for (final entity in directory.listSync(recursive: true)) {
      if (entity is File && entity.path.endsWith('.dart')) {
        // Skip hidden directories and build directories
        if (!entity.path.contains('/.') &&
            !entity.path.contains('.stac_build')) {
          dartFiles.add(entity);
        }
      }
    }

    return dartFiles;
  }

  Future<int> _processStacFile(
    File file,
    Directory buildDir,
    String projectRoot,
  ) async {
    final relativePath = path.relative(file.path, from: Directory.current.path);
    _log('Processing file: $relativePath');

    int processedCount = 0;

    try {
      // Analyze the Dart file to find StacWidget-returning functions
      final functions = await _analyzeStacFile(file, projectRoot);

      if (functions.isEmpty) {
        _log('No StacWidget functions found in $relativePath');
        return 0;
      }

      print(
        '🔍 Found ${functions.length} StacWidget function(s) in $relativePath',
      );

      // Execute each function and convert to JSON
      for (final functionName in functions) {
        try {
          await _convertFunctionToJson(
            file,
            functionName,
            buildDir,
            projectRoot,
          );
          processedCount++;
          print('   ✓ $functionName → ${_toSnakeCase(functionName)}.json');
        } catch (e) {
          print('   ✗ Failed to process $functionName: $e');
          if (verbose) {
            print('     ${e.toString()}');
          }
        }
      }
    } catch (e) {
      print('❌ Error processing $relativePath: $e');
      if (verbose) {
        print(e.toString());
      }
    }

    return processedCount;
  }

  Future<List<String>> _analyzeStacFile(File file, String projectRoot) async {
    final functions = <String>[];

    try {
      // Create analysis context
      final collection = AnalysisContextCollection(
        includedPaths: [file.path],
        resourceProvider: PhysicalResourceProvider(),
      );

      final context = collection.contextFor(file.path);
      final result = await context.currentSession.getResolvedUnit(file.path);

      if (result is ResolvedUnitResult) {
        final unit = result.unit;

        // Find top-level functions that return StacWidget
        for (final declaration in unit.declarations) {
          if (declaration is FunctionDeclaration) {
            final returnType = declaration.returnType?.type;
            if (_isStacWidgetType(returnType)) {
              functions.add(declaration.name.lexeme);
              _log('Found StacWidget function: ${declaration.name.lexeme}');
            }
          }
        }
      }
    } catch (e) {
      _log('Error analyzing ${file.path}: $e');
    }

    return functions;
  }

  bool _isStacWidgetType(DartType? type) {
    if (type == null) return false;

    // Check if the type is StacWidget or extends StacWidget
    final element = type.element;
    if (element is ClassElement) {
      // Check direct type name
      if (element.name == 'StacWidget') return true;

      // Check superclass hierarchy
      ClassElement? current = element;
      while (current != null) {
        if (current.name == 'StacWidget') return true;
        final supertype = current.supertype?.element;
        current = supertype is ClassElement ? supertype : null;
      }
    }

    return false;
  }

  Future<void> _convertFunctionToJson(
    File file,
    String functionName,
    Directory buildDir,
    String projectRoot,
  ) async {
    _log('Converting function $functionName to JSON');

    try {
      // Create a temporary script to execute the function
      final tempScript = await _createTempScript(
        file,
        functionName,
        projectRoot,
      );

      // Execute the script in an isolate and get the JSON result
      final json = await _executeInIsolate(tempScript);

      if (json != null) {
        // Clean JSON by removing null and empty values
        final cleanedJson = _cleanJson(json);

        if (cleanedJson != null) {
          // Save JSON to build directory
          final fileName = _toSnakeCase(functionName);
          final outputFile = File(path.join(buildDir.path, '$fileName.json'));
          await outputFile.writeAsString(
            JsonEncoder.withIndent('  ').convert(cleanedJson),
          );
          _log('Generated: ${outputFile.path}');
        }
      }

      // Clean up temp script
      if (await tempScript.exists()) {
        await tempScript.delete();
      }
    } catch (e) {
      throw Exception('Error converting $functionName: $e');
    }
  }

  Future<File> _createTempScript(
    File originalFile,
    String functionName,
    String projectRoot,
  ) async {
    final tempDir = Directory.systemTemp;
    final tempFile = File(
      path.join(
        tempDir.path,
        'stac_temp_${DateTime.now().millisecondsSinceEpoch}.dart',
      ),
    );

    // Read the original file content
    final originalContent = await originalFile.readAsString();

    // Create a script that imports the original file and calls the function
    final scriptContent =
        '''
import 'dart:convert';
import 'dart:isolate';
$originalContent

void main(List<String> args, SendPort sendPort) {
  try {
    final result = $functionName();
    final json = result.toJson();
    sendPort.send({'success': true, 'data': json});
  } catch (e) {
    sendPort.send({'success': false, 'error': e.toString()});
  }
}
''';

    await tempFile.writeAsString(scriptContent);
    return tempFile;
  }

  Future<Map<String, dynamic>?> _executeInIsolate(File script) async {
    final receivePort = ReceivePort();

    try {
      await Isolate.spawnUri(script.uri, [], receivePort.sendPort);

      final result = await receivePort.first as Map<String, dynamic>;

      if (result['success'] == true) {
        return result['data'] as Map<String, dynamic>;
      } else {
        throw Exception('Execution failed: ${result['error']}');
      }
    } finally {
      receivePort.close();
    }
  }

  void _log(String message) {
    if (verbose) {
      print('[STAC CLI] $message');
    }
  }

  String _toSnakeCase(String camelCase) {
    return camelCase
        .replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => '_${match.group(0)!.toLowerCase()}',
        )
        .replaceFirst(
          RegExp(r'^_'),
          '',
        ); // Remove leading underscore if present
  }

  /// Recursively removes null and empty values from JSON
  dynamic _cleanJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      final cleanedMap = <String, dynamic>{};
      for (final entry in json.entries) {
        final cleanedValue = _cleanJson(entry.value);
        if (cleanedValue != null &&
            cleanedValue != [] &&
            cleanedValue != {} &&
            !(cleanedValue is String && cleanedValue.isEmpty)) {
          cleanedMap[entry.key] = cleanedValue;
        }
      }
      return cleanedMap.isEmpty ? null : cleanedMap;
    } else if (json is List) {
      final cleanedList = json
          .map(_cleanJson)
          .where(
            (item) =>
                item != null &&
                item != [] &&
                item != {} &&
                !(item is String && item.isEmpty),
          )
          .toList();
      return cleanedList.isEmpty ? null : cleanedList;
    }
    return json;
  }
}
