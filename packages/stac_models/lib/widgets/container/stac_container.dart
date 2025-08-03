import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/painting/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/painting/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_models/types/stac_alignment.dart';
import 'package:stac_models/types/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_models/types/stac_clip.dart';

part 'stac_container.g.dart';

/// A Stac model representing Flutter's [Container] widget.
///
/// Combines styling, positioning, and sizing properties for child widgets.
/// Supports padding, margins, colors, decorations, sizing, and alignment.
///
/// ```dart
/// StacContainer(
///   padding: StacEdgeInsets.all(16.0),
///   color: StacColors.red,
///   child: StacText(data: 'Hello'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "container",
///   "padding": {"all": 16.0},
///   "color": "#FF0000",
///   "child": {"type": "text", "data": "Hello"}
/// }
/// ```
@JsonSerializable()
class StacContainer extends StacWidget {
  /// Creates a [StacContainer] with optional styling properties.
  const StacContainer({
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transformAlignment,
    this.child,
    this.clipBehavior,
  });

  /// How to align the [child] within the container.
  final StacAlignment? alignment;

  /// Inner spacing around the [child].
  final StacEdgeInsets? padding;

  /// Background color. Cannot be used with [decoration].
  final StacColor? color;

  /// Background decoration (borders, gradients, shadows).
  final StacBoxDecoration? decoration;

  /// Foreground decoration painted over the [child].
  final StacBoxDecoration? foregroundDecoration;

  /// Fixed width. If null, expands to fill available space.
  /// Supports string values like "20" or "infinite".
  @DoubleConverter()
  final double? width;

  /// Fixed height. If null, expands to fill available space.
  /// Supports string values like "20" or "infinite".
  @DoubleConverter()
  final double? height;

  /// Size constraints for the container.
  final StacBoxConstraints? constraints;

  /// Outer spacing around the container.
  final StacEdgeInsets? margin;

  /// Transform alignment for the container.
  final StacAlignment? transformAlignment;

  /// The child widget contained within this container.

  final StacWidget? child;

  /// How to clip the container's content.
  final StacClip? clipBehavior;

  /// Widget type identifier.
  @override
  String get type => 'container';

  /// Creates a [StacContainer] from JSON.
  factory StacContainer.fromJson(Map<String, dynamic> json) =>
      _$StacContainerFromJson(json);

  /// Converts this container to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacContainerToJson(this);
}
