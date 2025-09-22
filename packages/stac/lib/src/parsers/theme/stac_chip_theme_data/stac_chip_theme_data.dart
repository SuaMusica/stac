import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/foundation/borders/stac_border_side_parser.dart';
import 'package:stac/src/parsers/foundation/borders/stac_shape_border_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_box_constraints_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/stac.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_chip_theme_data.freezed.dart';
part 'stac_chip_theme_data.g.dart';

@freezed
abstract class StacChipThemeData with _$StacChipThemeData {
  const factory StacChipThemeData({
    String? color,
    String? backgroundColor,
    String? deleteIconColor,
    String? disabledColor,
    String? selectedColor,
    String? secondarySelectedColor,
    String? shadowColor,
    String? surfaceTintColor,
    String? selectedShadowColor,
    bool? showCheckmark,
    String? checkmarkColor,
    StacEdgeInsets? labelPadding,
    StacEdgeInsets? padding,
    StacBorderSide? side,
    StacShapeBorder? shape,
    StacTextStyle? labelStyle,
    StacTextStyle? secondaryLabelStyle,
    Brightness? brightness,
    double? elevation,
    double? pressElevation,
    StacIconThemeData? iconTheme,
    StacBoxConstraints? avatarBoxConstraints,
    StacBoxConstraints? deleteIconBoxConstraints,
  }) = _StacChipThemeData;

  factory StacChipThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacChipThemeDataFromJson(json);
}

extension StacChipThemeDataParser on StacChipThemeData {
  ChipThemeData parse(BuildContext context) {
    return ChipThemeData(
      color: WidgetStatePropertyAll(color?.toColor(context)),
      backgroundColor: backgroundColor?.toColor(context),
      deleteIconColor: deleteIconColor?.toColor(context),
      disabledColor: disabledColor?.toColor(context),
      selectedColor: selectedColor?.toColor(context),
      secondarySelectedColor: secondarySelectedColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      selectedShadowColor: selectedShadowColor?.toColor(context),
      showCheckmark: showCheckmark,
      checkmarkColor: checkmarkColor?.toColor(context),
      labelPadding: labelPadding?.parse,
      padding: padding?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context) as OutlinedBorder,
      labelStyle: labelStyle?.parse(context),
      secondaryLabelStyle: secondaryLabelStyle?.parse(context),
      brightness: brightness,
      elevation: elevation,
      pressElevation: pressElevation,
      iconTheme: iconTheme?.parse(context),
      avatarBoxConstraints: avatarBoxConstraints?.parse,
      deleteIconBoxConstraints: deleteIconBoxConstraints?.parse,
    );
  }
}
