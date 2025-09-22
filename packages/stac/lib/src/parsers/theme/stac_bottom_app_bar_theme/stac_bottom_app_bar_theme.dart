import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_bottom_app_bar_theme.freezed.dart';
part 'stac_bottom_app_bar_theme.g.dart';

@freezed
abstract class StacBottomAppBarTheme with _$StacBottomAppBarTheme {
  const factory StacBottomAppBarTheme({
    String? color,
    double? elevation,
    double? height,
    String? surfaceTintColor,
    String? shadowColor,
    StacEdgeInsets? padding,
  }) = _StacBottomAppBarTheme;

  factory StacBottomAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacBottomAppBarThemeFromJson(json);
}

extension StacBottomAppBarThemeParser on StacBottomAppBarTheme {
  BottomAppBarThemeData? parse(BuildContext context) {
    return BottomAppBarThemeData(
      color: color?.toColor(context),
      elevation: elevation,
      height: height,
      surfaceTintColor: surfaceTintColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      padding: padding?.parse,
    );
  }
}
