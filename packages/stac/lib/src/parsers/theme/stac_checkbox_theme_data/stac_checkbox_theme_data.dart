import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_checkbox_theme_data.freezed.dart';
part 'stac_checkbox_theme_data.g.dart';

@freezed
abstract class StacCheckboxThemeData with _$StacCheckboxThemeData {
  const factory StacCheckboxThemeData({
    StacMouseCursor? mouseCursor,
    String? fillColor,
    String? checkColor,
    String? overlayColor,
    double? splashRadius,
    MaterialTapTargetSize? materialTapTargetSize,
    StacVisualDensity? visualDensity,
    StacShapeBorder? shape,
    StacBorderSide? side,
  }) = _StacCheckboxThemeData;

  factory StacCheckboxThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCheckboxThemeDataFromJson(json);
}

extension StacCheckboxThemeDataParser on StacCheckboxThemeData {
  CheckboxThemeData parse(BuildContext context) {
    return CheckboxThemeData(
      mouseCursor: WidgetStateProperty.all(mouseCursor?.parse),
      fillColor: fillColor != null
          ? WidgetStateProperty.all(fillColor!.toColor(context))
          : null,
      checkColor: checkColor != null
          ? WidgetStateProperty.all(checkColor!.toColor(context))
          : null,
      overlayColor: overlayColor != null
          ? WidgetStateProperty.all(overlayColor!.toColor(context))
          : null,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize,
      visualDensity: visualDensity?.parse,
      shape: shape?.parse(context),
      side: side?.parse(context),
    );
  }
}
