import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/theme/stac_color_scheme/stac_color_scheme.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_button_theme_data.freezed.dart';
part 'stac_button_theme_data.g.dart';

@freezed
abstract class StacButtonThemeData with _$StacButtonThemeData {
  const factory StacButtonThemeData({
    @Default(ButtonTextTheme.normal) ButtonTextTheme textTheme,
    @Default(88.0) double minWidth,
    @Default(36.0) double height,
    StacEdgeInsets? padding,
    StacShapeBorder? shape,
    @Default(ButtonBarLayoutBehavior.padded)
    ButtonBarLayoutBehavior layoutBehavior,
    @Default(false) bool alignedDropdown,
    String? buttonColor,
    String? disabledColor,
    String? focusColor,
    String? hoverColor,
    String? highlightColor,
    String? splashColor,
    StacColorScheme? colorScheme,
    MaterialTapTargetSize? materialTapTargetSize,
  }) = _StacButtonThemeData;

  factory StacButtonThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacButtonThemeDataFromJson(json);
}

extension StacButtonThemeDataParser on StacButtonThemeData {
  ButtonThemeData? parse(BuildContext context) {
    return ButtonThemeData(
      textTheme: textTheme,
      minWidth: minWidth,
      height: height,
      padding: padding?.parse,
      shape: shape?.parse(context),
      layoutBehavior: layoutBehavior,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      focusColor: focusColor?.toColor(context),
      hoverColor: hoverColor?.toColor(context),
      highlightColor: highlightColor?.toColor(context),
      splashColor: splashColor?.toColor(context),
      colorScheme: colorScheme?.parse(context),
      materialTapTargetSize: materialTapTargetSize,
    );
  }
}
