import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_models/types/stac_border_radius/stac_border_radius.dart';
import 'package:stac_models/types/stac_border_side/stac_border_side.dart';

part 'stac_beveled_rectangle_border.freezed.dart';
part 'stac_beveled_rectangle_border.g.dart';

@freezed
abstract class StacBeveledRectangleBorder with _$StacBeveledRectangleBorder {
  const factory StacBeveledRectangleBorder({
    @Default(StacBorderSide.none) StacBorderSide side,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacBeveledRectangleBorder;

  factory StacBeveledRectangleBorder.fromJson(Map<String, dynamic> json) =>
      _$StacBeveledRectangleBorderFromJson(json);
}

extension MiralBeveledRactangleBorderParser on StacBeveledRectangleBorder {
  ShapeBorder parse(BuildContext context) {
    return BeveledRectangleBorder(
      side: side.parse(context),
      borderRadius: borderRadius.parse,
    );
  }
}
