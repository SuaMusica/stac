import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/painting/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/painting/stac_text_style/stac_text_style.dart';

part 'stac_material_banner_theme_data.freezed.dart';
part 'stac_material_banner_theme_data.g.dart';

@freezed
abstract class StacMaterialBannerThemeData with _$StacMaterialBannerThemeData {
  const factory StacMaterialBannerThemeData({
    String? backgroundColor,
    String? surfaceTintColor,
    String? shadowColor,
    String? dividerColor,
    StacTextStyle? contentTextStyle,
    double? elevation,
    StacEdgeInsets? padding,
    StacEdgeInsets? leadingPadding,
  }) = _StacMaterialBannerThemeData;

  factory StacMaterialBannerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialBannerThemeDataFromJson(json);
}

extension StacMaterialBannerThemeDataParser on StacMaterialBannerThemeData {
  MaterialBannerThemeData parse(BuildContext context) {
    return MaterialBannerThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      dividerColor: dividerColor?.toColor(context),
      contentTextStyle: contentTextStyle?.parse(context),
      elevation: elevation,
      padding: padding?.parse,
      leadingPadding: leadingPadding?.parse,
    );
  }
}
