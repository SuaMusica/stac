import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_visibility.g.dart';

@JsonSerializable()
class StacVisibility extends StacWidget {
  const StacVisibility({
    this.child,
    this.visible,
    this.replacement,
    this.maintainState,
    this.maintainAnimation,
    this.maintainSize,
    this.maintainSemantics,
    this.maintainInteractivity,
  });

  @StacWidgetConverter()
  final StacWidget? child;

  final bool? visible;

  @StacWidgetConverter()
  final StacWidget? replacement;

  final bool? maintainState;

  final bool? maintainAnimation;

  final bool? maintainSize;

  final bool? maintainSemantics;

  final bool? maintainInteractivity;

  factory StacVisibility.fromJson(Map<String, dynamic> json) =>
      _$StacVisibilityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacVisibilityToJson(this);

  @override
  String get type => 'visibility';
}
