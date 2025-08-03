import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_models/types/stac_clip.dart';

part 'stac_elevated_button.g.dart';

/// A Stac model representing Flutter's [ElevatedButton] widget.
///
/// Represents a Material Design elevated button that responds to touches
/// by elevating and filling with color.
///
/// ```dart
/// StacElevatedButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: StacText(data: 'Press me'),
///   style: StacButtonStyle(elevation: 4.0),
/// )
/// ```
///
/// ```json
/// {
///   "type": "elevatedButton",
///   "child": {"type": "text", "data": "Press me"},
///   "onPressed": {"action": "navigate", "route": "/next"}
/// }
/// ```
@JsonSerializable()
class StacElevatedButton extends StacWidget {
  /// Creates a [StacElevatedButton] with the given properties.
  const StacElevatedButton({
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.autofocus,
    this.clipBehavior,
    this.child,
  });

  /// Called when the button is tapped or otherwise activated.
  /// If null, the button will be disabled.
  final Map<String, dynamic>? onPressed;

  /// Called when the button is long-pressed.
  final Map<String, dynamic>? onLongPress;

  /// Called when a pointer enters or exits the button response area.
  final Map<String, dynamic>? onHover;

  /// Called when the focus changes.
  final Map<String, dynamic>? onFocusChange;

  /// Customizes this button's appearance.
  final StacButtonStyle? style;

  /// True if this widget will be selected as the initial focus when no other
  /// node in its scope is currently focused.
  final bool? autofocus;

  /// How to clip the button's content.
  final StacClip? clipBehavior;

  /// The widget below this widget in the tree.
  /// Typically a [Text] widget.
  @StacWidgetConverter()
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => 'elevatedButton';

  /// Creates a [StacElevatedButton] from JSON.
  factory StacElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$StacElevatedButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacElevatedButtonToJson(this);
}
