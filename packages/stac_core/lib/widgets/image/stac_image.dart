import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_image.g.dart';

@JsonSerializable()
class StacImage extends StacWidget {
  const StacImage({
    required this.src,
    this.alignment,
    this.imageType,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  });

  final String src;

  final StacAlignment? alignment;

  final StacImageType? imageType;

  final StacColor? color;

  @DoubleConverter()
  final double? width;

  @DoubleConverter()
  final double? height;

  final StacBoxFit? fit;

  final StacImageRepeat? repeat;

  final StacFilterQuality? filterQuality;

  final String? semanticLabel;

  final bool? excludeFromSemantics;

  @override
  String get type => 'image';

  factory StacImage.fromJson(Map<String, dynamic> json) =>
      _$StacImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacImageToJson(this);
}
