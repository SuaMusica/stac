import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_logger/stac_logger.dart';

/// A JSON converter that converts style values to [StacTextStyle].
///
/// Handles different input formats:
/// - String (e.g., "bodyMedium") -> [StacThemeTextStyle]
/// - Object (e.g., {"color": "#FF2196F3"}) -> [StacCustomTextStyle]
/// - null -> null
/// - [StacTextStyle] values -> pass through
class StacTextStyleConverter implements JsonConverter<StacTextStyle?, dynamic> {
  /// Creates a [StacTextStyleConverter] that converts style values to [StacTextStyle].
  const StacTextStyleConverter();

  @override
  StacTextStyle? fromJson(dynamic json) {
    if (json == null) return null;

    if (json is StacTextStyle) return json;

    if (json is String) {
      for (final value in StacMaterialTextStyle.values) {
        if (value.name == json) {
          return StacTextStyle.fromTheme(textTheme: value);
        }
      }

      Log.w(
        'StacTextStyleConverter: Invalid theme style string "$json". '
        'Valid values are: ${StacMaterialTextStyle.values.map((e) => e.name).join(', ')}. '
        'Returning null.',
      );
      return null;
    }

    if (json is Map<String, dynamic>) {
      try {
        if (json.containsKey('type')) {
          return StacTextStyle.fromJson(json);
        } else {
          return StacCustomTextStyle.fromJson(json);
        }
      } catch (e) {
        Log.w(
          'StacTextStyleConverter: Failed to parse style object: $json. '
          'Error: $e. Returning null.',
        );
        return null;
      }
    }

    Log.w(
      'StacTextStyleConverter: Unexpected type ${json.runtimeType} for style value: $json. '
      'Expected theme TextStyle key or custom TextStyle. Returning null.',
    );
    return null;
  }

  @override
  dynamic toJson(StacTextStyle? object) => object?.toJson();
}
