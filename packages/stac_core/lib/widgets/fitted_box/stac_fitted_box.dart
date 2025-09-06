import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_fitted_box.g.dart';

@JsonSerializable()
class StacFittedBox extends StacWidget {
  /// Creates a [StacFittedBox] that scales and positions its [child].
  const StacFittedBox({
    this.fit,
    this.alignment,
    this.clipBehavior,
    this.child,
  });

  final StacBoxFit? fit;

  final StacAlignment? alignment;

  final StacClip? clipBehavior;

  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.fittedBox.name;

  /// Creates a [StacFittedBox] from a JSON map.
  factory StacFittedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFittedBoxFromJson(json);

  /// Converts this [StacFittedBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFittedBoxToJson(this);
}
