import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_models/stac_models.dart';

extension StacTextStyleParser on StacTextStyle {
  TextStyle parse(BuildContext context) {
    return TextStyle(
      inherit: inherit ?? true,
      color: color?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      fontSize: fontSize,
      fontWeight: fontWeight?.parse,
      fontStyle: fontStyle?.parse,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline?.parse,
      height: height,
      leadingDistribution: leadingDistribution?.parse,
      decorationColor: decorationColor?.toColor(context),
      decorationStyle: decorationStyle?.parse,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      package: package,
      overflow: overflow?.parse,
    );
  }
}

extension StacFontWeightParser on StacFontWeight {
  FontWeight get parse {
    switch (this) {
      case StacFontWeight.w100:
        return FontWeight.w100;
      case StacFontWeight.w200:
        return FontWeight.w200;
      case StacFontWeight.w300:
        return FontWeight.w300;
      case StacFontWeight.w400:
        return FontWeight.w400;
      case StacFontWeight.w500:
        return FontWeight.w500;
      case StacFontWeight.w600:
        return FontWeight.w600;
      case StacFontWeight.w700:
        return FontWeight.w700;
      case StacFontWeight.w800:
        return FontWeight.w800;
      case StacFontWeight.w900:
        return FontWeight.w900;
      case StacFontWeight.normal:
        return FontWeight.normal;
      case StacFontWeight.bold:
        return FontWeight.bold;
    }
  }
}

extension StacFontStyleParser on StacFontStyle {
  FontStyle get parse {
    switch (this) {
      case StacFontStyle.normal:
        return FontStyle.normal;
      case StacFontStyle.italic:
        return FontStyle.italic;
    }
  }
}

extension StacTextBaselineParser on StacTextBaseline {
  TextBaseline get parse {
    switch (this) {
      case StacTextBaseline.alphabetic:
        return TextBaseline.alphabetic;
      case StacTextBaseline.ideographic:
        return TextBaseline.ideographic;
    }
  }
}
