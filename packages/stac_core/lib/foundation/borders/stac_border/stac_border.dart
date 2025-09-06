import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';

part 'stac_border.g.dart';

enum StacBorderStyle {
  /// Skip the border.
  none,

  /// Draw the border as a solid line.
  solid,

  // if you add more, think about how they will lerp
}

@JsonSerializable()
class StacBorder implements StacElement {
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

  // Uniform border properties (applies to all sides)
  final StacColor? color;
  final StacBorderStyle? borderStyle;
  final double? width;
  final double? strokeAlign;
  // Individual border sides
  final StacBorderSide? top;
  final StacBorderSide? right;
  final StacBorderSide? bottom;
  final StacBorderSide? left;

  factory StacBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBorderFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBorderToJson(this);
}
