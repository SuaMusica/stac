import 'dart:convert';

import 'package:stac_export/core/stac_widgets.dart';

class StacExport {
  /// Convert a widget to JSON and remove null values
  static Map<String, dynamic> exportToJson(StacWidget widget) {
    final json = _processValue(widget.toJson());
    if (json is Map<String, dynamic>) {
      return json;
    }
    throw Exception('Failed to convert widget to JSON');
  }

  /// Convert widget to a JSON string (optionally prettified)
  static String toJsonString(StacWidget widget, {bool pretty = false}) {
    final json = exportToJson(widget);
    return pretty
        ? JsonEncoder.withIndent('  ').convert(json)
        : jsonEncode(json);
  }

  /// Process any value for JSON serialization, handling nested objects
  static dynamic _processValue(dynamic value) {
    if (value == null) return null;

    // Handle lists (arrays)
    if (value is List) {
      return value.map((item) => _processValue(item)).toList();
    }

    // Handle maps (objects)
    if (value is Map) {
      final result = <String, dynamic>{};
      value.forEach((key, val) {
        final processedVal = _processValue(val);
        if (processedVal != null) {
          result[key.toString()] = processedVal;
        }
      });
      return result;
    }

    // Handle objects with toJson method (including StacTextStyle)
    if (value is StacElement) {
      try {
        return value.toJson();
      } catch (e) {
        // Ignore if toJson isn't available
      }
    }

    // Handle enum values
    if (value is Enum) {
      return value.name;
    }

    // Return primitive values as is
    return value;
  }
}
