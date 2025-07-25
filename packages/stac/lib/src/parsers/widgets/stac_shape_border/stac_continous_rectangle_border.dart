import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_models/types/stac_border_radius/stac_border_radius.dart';
import 'package:stac_models/types/stac_border_side/stac_border_side.dart';

part 'stac_continous_rectangle_border.freezed.dart';
part 'stac_continous_rectangle_border.g.dart';

@freezed
abstract class StacContinousRectangleBorder
    with _$StacContinousRectangleBorder {
  const factory StacContinousRectangleBorder({
    @Default(StacBorderSide.none) StacBorderSide side,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacContinousRectangleBorder;

  factory StacContinousRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacContinousRectangleBorderFromJson(json);
}

extension MiralContinousRectangleBorderParser on StacContinousRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return ContinuousRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
