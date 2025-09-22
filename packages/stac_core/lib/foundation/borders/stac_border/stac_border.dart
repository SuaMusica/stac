import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';

part 'stac_border.g.dart';

/// Border style options for drawing borders.
enum StacBorderStyle {
  /// Skip the border.
  none,

  /// Draw the border as a solid line.
  solid,

  // if you add more, think about how they will lerp
}

/// A Stac representation of borders for UI elements.
///
/// This class supports both uniform borders (applied to all sides) and
/// individual side borders with different styling. You can specify global
/// properties or customize each side individually.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacBorder(
///   color: StacColors.blue,
///   borderStyle: StacBorderStyle.solid,
///   width: 2.0,
///   strokeAlign: 0.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#2196F3",
///   "borderStyle": "solid",
///   "width": 2.0,
///   "strokeAlign": 0.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBorder implements StacElement {
  /// Creates a border with optional uniform and individual side properties.
  const StacBorder({
    this.color,
    this.borderStyle,
    this.width,
    this.strokeAlign,
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  /// The color applied to all sides (when not using individual sides).
  final StacColor? color;

  /// The border style applied to all sides (when not using individual sides).
  final StacBorderStyle? borderStyle;

  /// The width applied to all sides (when not using individual sides).
  final double? width;

  /// The stroke alignment applied to all sides (when not using individual sides).
  final double? strokeAlign;

  /// The top border side with individual styling.
  final StacBorderSide? top;

  /// The right border side with individual styling.
  final StacBorderSide? right;

  /// The bottom border side with individual styling.
  final StacBorderSide? bottom;

  /// The left border side with individual styling.
  final StacBorderSide? left;

  /// Creates a [StacBorder] from a JSON map.
  factory StacBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBorderFromJson(json);

  /// Converts this [StacBorder] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacBorderToJson(this);
}
