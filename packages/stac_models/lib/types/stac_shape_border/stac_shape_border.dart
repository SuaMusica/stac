import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/types/stac_beveled_rectangle_border/stac_beveled_rectangle_border.dart';
import 'package:stac_models/types/stac_border_side/stac_border_side.dart';
import 'package:stac_models/types/stac_circle_border/stac_circle_border.dart';
import 'package:stac_models/types/stac_continuous_rectangle_border/stac_continuous_rectangle_border.dart';
import 'package:stac_models/types/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';

enum StacShapeBorderType {
  circleBorder,
  roundedRectangleBorder,
  continuousRectangleBorder,
  beveledRectangleBorder,
}

/// Abstract base class for Stac shape borders.
///
/// Defines the common interface for all shape border implementations.
/// Each shape border type extends this class and provides its own
/// specific properties and behavior.
///
/// ```dart
/// // Example usage with RoundedRectangleBorder
/// StacRoundedRectangleBorder(
///   borderRadius: StacBorderRadius.all(8.0),
///   side: StacBorderSide(width: 1.0, color: StacColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "roundedRectangle",
///   "borderRadius": {"all": 8.0},
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
abstract class StacShapeBorder implements StacElement {
  /// Creates a [StacShapeBorder] with the given properties.
  const StacShapeBorder({this.side, required this.type});

  /// The border side properties.
  final StacBorderSide? side;

  /// The type identifier for this shape border.
  /// Must be implemented by subclasses.
  @JsonKey(includeToJson: true)
  final StacShapeBorderType type;

  /// Creates a [StacShapeBorder] from JSON.
  /// This factory method delegates to the appropriate subclass
  /// based on the "type" field in the JSON.
  factory StacShapeBorder.fromJson(Map<String, dynamic> json) {
    final typeString = json['type'];

    // Convert string to enum
    late StacShapeBorderType type;
    for (final enumValue in StacShapeBorderType.values) {
      if (enumValue.name == typeString) {
        type = enumValue;
        break;
      }
    }

    switch (type) {
      case StacShapeBorderType.roundedRectangleBorder:
        return StacRoundedRectangleBorder.fromJson(json);
      case StacShapeBorderType.circleBorder:
        return StacCircleBorder.fromJson(json);

      case StacShapeBorderType.continuousRectangleBorder:
        return StacContinuousRectangleBorder.fromJson(json);
      case StacShapeBorderType.beveledRectangleBorder:
        return StacBeveledRectangleBorder.fromJson(json);
    }
  }
}
