import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/text/stac_text_types.dart';

part 'stac_text_style.g.dart';

/// A Stac representation of text styling properties.
///
/// This class defines the visual appearance of text including font,
/// color, spacing, decoration, and other typography properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTextStyle(
///   fontSize: 16.0,
///   fontWeight: StacFontWeight.bold,
///   color: StacColors.blue,
///   letterSpacing: 1.2,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "fontSize": 16.0,
///   "fontWeight": "bold",
///   "color": "#2196F3",
///   "letterSpacing": 1.2
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacTextStyle extends StacElement {
  /// Creates a text style with the specified properties.
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

  /// Whether to inherit text style properties from the parent.
  bool? inherit;

  /// The color of the text.
  StacColor? color;

  /// The background color of the text.
  StacColor? backgroundColor;

  /// The size of the font in logical pixels.
  double? fontSize;

  /// The weight (boldness) of the font.
  StacFontWeight? fontWeight;

  /// The style (normal or italic) of the font.
  StacFontStyle? fontStyle;

  /// The amount of space between characters.
  double? letterSpacing;

  /// The amount of space between words.
  double? wordSpacing;

  /// The baseline for aligning text.
  StacTextBaseline? textBaseline;

  /// The line height as a multiple of the font size.
  double? height;

  /// How the leading (line height) is distributed.
  StacTextLeadingDistribution? leadingDistribution;

  /// The color of text decorations (underline, overline, etc.).
  StacColor? decorationColor;

  /// The style of text decorations.
  StacTextDecorationStyle? decorationStyle;

  /// The thickness of text decorations.
  double? decorationThickness;

  /// A debug label for this text style.
  String? debugLabel;

  /// The name of the font family to use.
  String? fontFamily;

  /// A list of font family names to fall back to.
  List<String>? fontFamilyFallback;

  /// The package containing the font family.
  String? package;

  /// How text overflow should be handled.
  StacTextOverflow? overflow;

  /// Creates a [StacTextStyle] from a JSON map.
  factory StacTextStyle.fromJson(Map<String, dynamic> json) =>
      _$StacTextStyleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTextStyleToJson(this);
}
