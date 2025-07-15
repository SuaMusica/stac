import 'package:stac_export/core/stac_widgets.dart';

enum StacTextWidthBasis { parent, longestLine }

enum StacTextOverflow { clip, fade, ellipsis, visible }

enum StacTextAlign { left, right, center, justify, start, end }

enum StacTextDirection { rtl, ltr }

class StacText extends StacWidget {
  StacText({
    this.data,
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.selectionColor,
  });

  final String? data;
  final StacTextStyle? style;
  final StacTextAlign? textAlign;
  final StacTextDirection? textDirection;
  final bool? softWrap;
  final StacTextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final StacTextWidthBasis? textWidthBasis;
  final String? selectionColor;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'data': data,
      'style': style,
      'textAlign': textAlign,
      'textDirection': textDirection,
      'softWrap': softWrap,
      'overflow': overflow,
      'textScaleFactor': textScaleFactor,
      'maxLines': maxLines,
      'semanticsLabel': semanticsLabel,
      'textWidthBasis': textWidthBasis,
      'selectionColor': selectionColor,
    }..removeWhere((key, value) => value == null);
  }

  @override
  String get type => 'text';
}

enum StacFontWeight {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900,
  normal,
  bold,
}

enum FontStyle { normal, italic }

enum TextBaseline { alphabetic, ideographic }

class StacTextStyle extends StacElement {
  StacTextStyle({
    this.inherit,
    this.color,
    this.backgroundColor,
    this.styleFromTheme,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.fontFamily,
    this.fontFamilyFallback,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
  });

  bool? inherit;
  String? color;
  String? backgroundColor;
  String? styleFromTheme;
  double? fontSize;
  StacFontWeight? fontWeight;
  FontStyle? fontStyle;
  String? fontFamily;
  List<String>? fontFamilyFallback;
  double? letterSpacing;
  double? wordSpacing;
  TextBaseline? textBaseline;
  double? height;

  @override
  Map<String, dynamic> toJson() {
    return {
      'inherit': inherit,
      'color': color,
      'backgroundColor': backgroundColor,
      'styleFromTheme': styleFromTheme,
      'fontSize': fontSize,
      'fontWeight': fontWeight,
      'fontStyle': fontStyle,
      'fontFamily': fontFamily,
      'fontFamilyFallback': fontFamilyFallback,
      'letterSpacing': letterSpacing,
      'wordSpacing': wordSpacing,
      'textBaseline': textBaseline,
      'height': height,
    }..removeWhere((key, value) => value == null);
  }
}
