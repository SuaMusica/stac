import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_positioned.g.dart';

/// A Stac widget that controls where a child of a Stack is positioned.
///
/// This widget corresponds to Flutter's Positioned widget and allows
/// precise positioning of a widget within a Stack using coordinates
/// and optional sizing constraints.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacPositioned(
///   left: 10,
///   top: 20,
///   child: StacText(data: 'Positioned text'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "positioned",
///   "left": 10,
///   "top": 20,
///   "child": {"type": "text", "data": "Positioned text"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacPositioned extends StacWidget {
  /// Creates a positioned widget with optional positioning and sizing.
  const StacPositioned({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    required this.child,
  });

  /// The distance from the left edge of the stack.
  @DoubleConverter()
  final double? left;

  /// The distance from the top edge of the stack.
  @DoubleConverter()
  final double? top;

  /// The distance from the right edge of the stack.
  @DoubleConverter()
  final double? right;

  /// The distance from the bottom edge of the stack.
  @DoubleConverter()
  final double? bottom;

  /// The width of the positioned widget.
  @DoubleConverter()
  final double? width;

  /// The height of the positioned widget.
  @DoubleConverter()
  final double? height;

  /// The widget to position within the stack.
  final StacWidget? child;

  @override
  String get type => WidgetType.positioned.name;

  /// Creates a [StacPositioned] from a JSON map.
  factory StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacPositionedToJson(this);
}
