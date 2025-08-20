import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/painting/stac_color/stac_colors.dart';
import 'package:stac_core/types/stac_text_types.dart';

part 'stac_text_style.g.dart';

@JsonSerializable()
class StacTextStyle extends StacElement {
  StacTextStyle({
    this.inherit,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  });

  bool? inherit;

  StacColor? color;

  StacColor? backgroundColor;

  double? fontSize;

  StacFontWeight? fontWeight;

  StacFontStyle? fontStyle;

  double? letterSpacing;

  double? wordSpacing;

  StacTextBaseline? textBaseline;

  double? height;

  StacTextLeadingDistribution? leadingDistribution;

  StacColor? decorationColor;

  StacTextDecorationStyle? decorationStyle;

  double? decorationThickness;

  String? debugLabel;

  String? fontFamily;

  List<String>? fontFamilyFallback;

  String? package;

  StacTextOverflow? overflow;

  factory StacTextStyle.fromJson(Map<String, dynamic> json) =>
      _$StacTextStyleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTextStyleToJson(this);
}
