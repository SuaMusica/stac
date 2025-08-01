import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/stac.dart';
import 'package:stac_models/types/stac_shape_border/stac_shape_border.dart';

part 'stac_drawer_theme_data.freezed.dart';
part 'stac_drawer_theme_data.g.dart';

@freezed
abstract class StacDrawerThemeData with _$StacDrawerThemeData {
  const factory StacDrawerThemeData({
    String? backgroundColor,
    String? scrimColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacShapeBorder? shape,
    StacShapeBorder? endShape,
    double? width,
    Clip? clipBehavior,
  }) = _StacDrawerThemeData;

  factory StacDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerThemeDataFromJson(json);
}

extension StacDrawerThemeDataParser on StacDrawerThemeData {
  DrawerThemeData parse(BuildContext context) {
    return DrawerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      scrimColor: scrimColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shape: shape?.parse(context),
      endShape: endShape?.parse(context),
      width: width,
      clipBehavior: clipBehavior,
    );
  }
}
