import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/alignment/stac_alignment.dart';
import 'package:stac_core/foundation/effects/stac_filter_quality.dart';
import 'package:stac_core/foundation/geometry/stac_rect/stac_rect.dart';
import 'package:stac_core/foundation/layout/stac_box_fit.dart';
import 'package:stac_core/foundation/ui_components/stac_image_repeat.dart';
import 'package:stac_core/foundation/ui_components/stac_image_type.dart';

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
