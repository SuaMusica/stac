import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_logger/stac_logger.dart';
import 'package:stac_models/painting/stac_decoration_image/stac_decoration_image.dart';
import 'package:stac_models/types/stac_image_type.dart';

extension StacDecorationImageParser on StacDecorationImage {
  DecorationImage? get parse {
    late ImageProvider image;
    switch (imageType) {
      case StacImageType.network:
        image = NetworkImage(src);
        break;
      case StacImageType.file:
        Log.w("StacDecorationImageParser: File image not supported on web");
        break;
      case StacImageType.asset:
        image = AssetImage(src);
        break;
      default:
        return null;
    }

    return DecorationImage(
      image: image,
      fit: fit?.parse,
      alignment: alignment?.parse ?? Alignment.center,
      centerSlice: centerSlice?.parse,
      repeat: repeat?.parse ?? ImageRepeat.noRepeat,
      matchTextDirection: matchTextDirection ?? false,
      scale: scale ?? 1.0,
      opacity: opacity ?? 1.0,
      filterQuality: filterQuality?.parse ?? FilterQuality.medium,
      invertColors: invertColors ?? false,
      isAntiAlias: isAntiAlias ?? false,
    );
  }
}
