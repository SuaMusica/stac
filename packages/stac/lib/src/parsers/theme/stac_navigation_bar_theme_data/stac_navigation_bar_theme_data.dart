import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_navigation_bar_theme_data.freezed.dart';
part 'stac_navigation_bar_theme_data.g.dart';

@freezed
abstract class StacNavigationBarThemeData with _$StacNavigationBarThemeData {
  const factory StacNavigationBarThemeData({
    double? height,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? indicatorColor,
    StacBorder? indicatorShape,
    StacTextStyle? labelTextStyle,
    StacIconThemeData? iconTheme,
    NavigationDestinationLabelBehavior? labelBehavior,
  }) = _StacNavigationBarThemeData;

  factory StacNavigationBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationBarThemeDataFromJson(json);
}

extension StacNavigationBarThemeDataParser on StacNavigationBarThemeData {
  NavigationBarThemeData? parse(BuildContext context) {
    return NavigationBarThemeData(
      height: height,
      backgroundColor: backgroundColor.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      indicatorColor: indicatorColor.toColor(context),
      indicatorShape: indicatorShape?.parse(context),
      labelTextStyle: WidgetStateProperty.all(labelTextStyle?.parse(context)),
      iconTheme: WidgetStateProperty.all(iconTheme?.parse(context)),
      labelBehavior: labelBehavior,
    );
  }
}
