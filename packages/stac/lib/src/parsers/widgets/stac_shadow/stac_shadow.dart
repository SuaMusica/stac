import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_models/types/stac_offset/stac_offset.dart';

part 'stac_shadow.freezed.dart';
part 'stac_shadow.g.dart';

@freezed
abstract class StacShadow with _$StacShadow {
  const factory StacShadow({
    @Default('#000000') String color,
    @Default(StacOffset.zero) StacOffset offset,
    @Default(StacDouble.zero) StacDouble blurRadius,
  }) = _StacShadow;

  factory StacShadow.fromJson(Map<String, dynamic> json) =>
      _$StacShadowFromJson(json);
}

extension StacShadowParser on StacShadow {
  Shadow parse(BuildContext context) {
    return Shadow(
      color: color.toColor(context)!,
      offset: offset.parse,
      blurRadius: blurRadius.parse,
    );
  }
}
