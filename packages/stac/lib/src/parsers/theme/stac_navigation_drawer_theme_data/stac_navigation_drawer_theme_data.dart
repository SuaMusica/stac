import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/widgets/stac_size/stac_size.dart';
import 'package:stac/src/utils/utils.dart';
import 'package:stac_models/painting/stac_text_style/stac_text_style.dart';

part 'stac_navigation_drawer_theme_data.freezed.dart';
part 'stac_navigation_drawer_theme_data.g.dart';

@freezed
abstract class StacNavigationDrawerThemeData
    with _$StacNavigationDrawerThemeData {
  const factory StacNavigationDrawerThemeData({
    double? tileHeight,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? indicatorColor,
    StacShapeBorder? indicatorShape,
    StacSize? indicatorSize,
    StacTextStyle? labelTextStyle,
    StacIconThemeData? iconTheme,
  }) = _StacNavigationDrawerThemeData;

  factory StacNavigationDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationDrawerThemeDataFromJson(json);
}

extension StacNavigationDrawerThemeDataParser on StacNavigationDrawerThemeData {
  NavigationDrawerThemeData parse(BuildContext context) {
    return NavigationDrawerThemeData(
      tileHeight: tileHeight,
      backgroundColor: backgroundColor?.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      indicatorColor: indicatorColor?.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      indicatorSize: indicatorSize?.parse,
      labelTextStyle: WidgetStatePropertyAll(labelTextStyle?.parse(context)),
      iconTheme: WidgetStatePropertyAll(iconTheme?.parse(context)),
    );
  }
}
