import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/theme/stac_button_style/stac_button_style.dart';
import 'package:stac_models/types/stac_clip.dart';

part 'stac_outlined_button.g.dart';

/// A Stac model representing Flutter's [OutlinedButton] widget.
///
/// Represents a Material Design outlined button that responds to touches
/// by filling with color.
///
/// ```dart
/// StacOutlinedButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: StacText(data: 'Press me'),
///   style: StacButtonStyle(elevation: 4.0),
/// )
/// ```
///
/// ```json
/// {
///   "type": "outlinedButton",
///   "child": {"type": "text", "data": "Press me"},
///   "onPressed": {"action": "navigate", "route": "/next"}
/// }
/// ```
@JsonSerializable()
class StacOutlinedButton extends StacWidget {
  /// Creates a [StacOutlinedButton] with the given properties.
  const StacOutlinedButton({
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

  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => 'outlinedButton';

  /// Creates a [StacOutlinedButton] from JSON.
  factory StacOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$StacOutlinedButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacOutlinedButtonToJson(this);
}
