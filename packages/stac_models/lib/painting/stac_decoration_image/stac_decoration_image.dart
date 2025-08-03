import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/types/stac_alignment.dart';
import 'package:stac_models/types/stac_box_fit.dart';
import 'package:stac_models/types/stac_filter_quality.dart';
import 'package:stac_models/types/stac_image_repeat.dart';
import 'package:stac_models/types/stac_image_type.dart';
import 'package:stac_models/types/stac_rect/stac_rect.dart';

part 'stac_decoration_image.g.dart';

@JsonSerializable()
class StacDecorationImage implements StacElement {
  const StacDecorationImage({
    required this.src,
    this.fit,
    this.imageType,
    this.alignment,
    this.centerSlice,
    this.repeat,
    this.matchTextDirection,
    this.scale,
    this.opacity,
    this.filterQuality,
    this.invertColors,
    this.isAntiAlias,
  });

  final String src;
  final StacBoxFit? fit;
  final StacImageType? imageType;
  final StacAlignment? alignment;
  final StacRect? centerSlice;
  final StacImageRepeat? repeat;
  final bool? matchTextDirection;
  final double? scale;
  final double? opacity;
  final StacFilterQuality? filterQuality;
  final bool? invertColors;
  final bool? isAntiAlias;

  factory StacDecorationImage.fromJson(Map<String, dynamic> json) =>
      _$StacDecorationImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDecorationImageToJson(this);
}
