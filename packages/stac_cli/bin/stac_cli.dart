#!/usr/bin/env dart

import 'package:args/args.dart';
import 'package:stac_cli/stac_cli.dart';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addCommand('build')
    ..addCommand('deploy')
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Show usage information',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      negatable: false,
      help: 'Show verbose output',
    );

  // Add deploy command options
  final deployCommand = parser.commands['deploy']!;
  deployCommand
    ..addOption('project-id', abbr: 'p', help: 'Project ID')
    ..addOption('user-id', abbr: 'k', help: 'User ID for deployment')
    ..addOption('url', abbr: 'u', help: 'Custom API endpoint URL');

  try {
    final results = parser.parse(arguments);

    if (results['help'] as bool) {
      print('STAC CLI - Build and deploy tool for STAC DSL files\n');
      print('Usage: stac <command> [options]\n');
      print('Commands:');
      print('  build    Convert STAC DSL files to JSON format');
      print('  deploy   Deploy JSON files to STAC cloud\n');
      print(parser.usage);
      return;
    }

    if (results.command?.name == 'build') {
      final stacCli = StacCli(verbose: results['verbose'] as bool);
      await stacCli.build();
    } else if (results.command?.name == 'deploy') {
      final stacCli = StacCli(verbose: results['verbose'] as bool);
      await stacCli.deploy(
        projectId: results.command!['project-id'] as String?,
        userId: results.command!['user-id'] as String?,
        apiUrl: results.command!['url'] as String?,
      );
    } else {
      print('Unknown command. Use --help for usage information.');
    }
  } catch (e) {
    print('Error: $e');
    print('Use --help for usage information.');
  }
}
