import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_text_span.g.dart';

/// Used by [StacTextSpan] to read span content from either `"text"` or `"data"`.
String? _readTextOrData(Map<dynamic, dynamic> map, String key) =>
    map['text'] ?? map['data'];

/// A Stac representation of an immutable span of text.
///
/// This class defines a piece of text with associated styling and
/// optional child spans for rich text formatting.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTextSpan(
///   text: 'Hello ',
///   style: StacTextStyle(fontWeight: StacFontWeight.bold),
///   children: [
///     StacTextSpan(text: 'World', style: StacTextStyle(color: StacColors.blue)),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "text": "Hello ",
///   "style": {"fontWeight": "bold"},
///   "children": [
///     {"text": "World", "style": {"color": "#2196F3"}}
///   ]
/// }
/// ```
///
/// The span text can be provided as either `"text"` or `"data"` in JSON;
/// both keys are accepted.
/// {@end-tool}
@JsonSerializable()
class StacTextSpan implements StacElement {
  /// Creates a text span with optional text, style, children, and tap handler.
  StacTextSpan({this.text, this.style, this.children = const [], this.onTap});

  /// The text content of this span.
  @JsonKey(readValue: _readTextOrData)
  final String? text;

  /// The style to apply to the text in this span.
  final StacTextStyle? style;

  /// Additional text spans to include as children.
  final List<StacTextSpan> children;

  /// Action to perform when this text span is tapped.
  final Map<String, dynamic>? onTap;

  @override
  Map<String, dynamic> toJson() => _$StacTextSpanToJson(this);

  /// Creates a [StacTextSpan] from a JSON map.
  ///
  /// Accepts the span content under either `"text"` or `"data"` via @JsonKey(readValue: ...).
  factory StacTextSpan.fromJson(Map<String, dynamic> json) =>
      _$StacTextSpanFromJson(json);
}
