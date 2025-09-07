import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_text.g.dart';

/// A Stac widget for displaying text with customizable styling and layout.
///
/// This widget corresponds to Flutter's Text widget and supports rich text
/// formatting, alignment, overflow handling, and accessibility features.
/// It can display both simple text and rich text with multiple text spans.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacText(
///   data: 'Hello, World!',
///   style: StacTextStyle(
///     fontSize: 18.0,
///     fontWeight: StacFontWeight.bold,
///     color: StacColors.blue,
///   ),
///   textAlign: StacTextAlign.center,
///   maxLines: 2,
///   overflow: StacTextOverflow.ellipsis,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "text",
///   "data": "Hello, World!",
///   "style": {
///     "fontSize": 18.0,
///     "fontWeight": "bold",
///     "color": "#2196F3"
///   },
///   "textAlign": "center",
///   "maxLines": 2,
///   "overflow": "ellipsis"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacText extends StacWidget {
  /// Creates a text widget with the given text data and optional styling.
  StacText({
    required this.data,
    this.children = const [],
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

  /// The text to display.
  final String data;

  /// Additional text spans for rich text formatting.
  ///
  /// These spans are combined with the main [data] to create rich text
  /// with different styles for different parts of the text.
  final List<StacTextSpan> children;

  /// The text style to apply to the text.
  final StacTextStyle? style;

  /// How the text should be aligned horizontally.
  final StacTextAlign? textAlign;

  /// The directionality of the text.
  ///
  /// This determines the text direction (LTR or RTL) for proper rendering
  /// of different languages.
  final StacTextDirection? textDirection;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the text will only break at explicit line breaks.
  final bool? softWrap;

  /// How visual overflow should be handled.
  final StacTextOverflow? overflow;

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger
  /// than the specified font size.
  final double? textScaleFactor;

  /// An optional maximum number of lines for the text to span.
  ///
  /// If the text exceeds the given number of lines, it will be truncated
  /// according to [overflow].
  final int? maxLines;

  /// An alternative semantic label for this text.
  ///
  /// If present, the semantics of this widget will contain this value
  /// instead of the actual text for accessibility purposes.
  final String? semanticsLabel;

  /// The strategy to use when calculating the width of the text.
  final StacTextWidthBasis? textWidthBasis;

  /// The color to use when painting the selection.
  ///
  /// This is used when the text is selectable.
  final StacColor? selectionColor;

  @override
  String get type => WidgetType.text.name;

  @override
  Map<String, dynamic> toJson() => _$StacTextToJson(this);

  /// Creates a [StacText] from a JSON map.
  factory StacText.fromJson(Map<String, dynamic> json) =>
      _$StacTextFromJson(json);
}
