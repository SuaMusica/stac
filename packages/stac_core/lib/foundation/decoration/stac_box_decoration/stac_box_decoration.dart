import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_box_decoration.g.dart';

@JsonSerializable()
class StacBoxDecoration extends StacElement {
  const StacBoxDecoration({
    this.color,
    this.image,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape,
  });

  final StacColor? color;
  final StacDecorationImage? image;
  final StacBorder? border;
  final StacBorderRadius? borderRadius;
  final List<StacBoxShadow>? boxShadow;
  final StacGradient? gradient;
  final StacBlendMode? backgroundBlendMode;
  final StacBoxShape? shape;

  factory StacBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacBoxDecorationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBoxDecorationToJson(this);
}
