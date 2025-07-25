import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_blur_style.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/types/stac_offset/stac_offset.dart';

part 'stac_box_shadow.g.dart';

@JsonSerializable()
class StacBoxShadow implements StacElement {
  const StacBoxShadow({
    this.color,
    this.blurRadius,
    this.offset,
    this.spreadRadius,
    this.blurStyle,
  });

  final StacColor? color;
  final StacDouble? blurRadius;
  final StacOffset? offset;
  final StacDouble? spreadRadius;
  final StacBlurStyle? blurStyle;

  factory StacBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$StacBoxShadowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBoxShadowToJson(this);
}
