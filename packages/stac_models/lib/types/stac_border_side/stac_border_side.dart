import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/types/stac_border/stac_border.dart';

part 'stac_border_side.g.dart';

@JsonSerializable()
class StacBorderSide implements StacElement {
  const StacBorderSide({
    this.color,
    this.width,
    this.strokeAlign,
    this.borderStyle,
  });

  final StacColor? color;
  final double? width;
  final double? strokeAlign;
  final StacBorderStyle? borderStyle;

  static const none = StacBorderSide(
    width: 0,
    borderStyle: StacBorderStyle.none,
  );

  factory StacBorderSide.fromJson(Map<String, dynamic> json) =>
      _$StacBorderSideFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBorderSideToJson(this);
}
