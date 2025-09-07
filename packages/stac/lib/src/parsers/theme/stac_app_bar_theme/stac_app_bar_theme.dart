import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_system_ui_overlay_style_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/theme/stac_icon_theme_data/stac_icon_theme_data.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_app_bar_theme.freezed.dart';
part 'stac_app_bar_theme.g.dart';

@freezed
abstract class StacAppBarTheme with _$StacAppBarTheme {
  const factory StacAppBarTheme({
    String? backgroundColor,
    String? foregroundColor,
    double? elevation,
    double? scrolledUnderElevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacShapeBorder? shape,
    StacIconThemeData? iconTheme,
    StacIconThemeData? actionsIconTheme,
    bool? centerTitle,
    double? titleSpacing,
    double? toolbarHeight,
    StacTextStyle? toolbarTextStyle,
    StacTextStyle? titleTextStyle,
    StacSystemUIOverlayStyle? systemOverlayStyle,
    StacEdgeInsets? actionsPadding,
  }) = _StacAppBarTheme;

  factory StacAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarThemeFromJson(json);
}

extension StacAppBarThemeParser on StacAppBarTheme {
  AppBarTheme? parse(BuildContext context) {
    return AppBarTheme(
      backgroundColor: backgroundColor.toColor(context),
      foregroundColor: foregroundColor.toColor(context),
      elevation: elevation,
      scrolledUnderElevation: scrolledUnderElevation,
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      shape: shape?.parse(context),
      iconTheme: iconTheme?.parse(context),
      actionsIconTheme: actionsIconTheme?.parse(context),
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle?.parse(context),
      titleTextStyle: titleTextStyle?.parse(context),
      systemOverlayStyle: systemOverlayStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
    );
  }
}
