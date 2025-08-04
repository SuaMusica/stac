import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/painting/painting.dart';
import 'package:stac_models/core/stac_widget.dart';

part 'stac_safe_area.g.dart';

@JsonSerializable()
class StacSafeArea extends StacWidget {
  const StacSafeArea({
    this.child,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.minimum,
    this.maintainBottomViewPadding,
  });

  final StacWidget? child;

  final bool? left;

  final bool? top;

  final bool? right;

  final bool? bottom;

  final StacEdgeInsets? minimum;

  final bool? maintainBottomViewPadding;

  @override
  String get type => 'safeArea';

  factory StacSafeArea.fromJson(Map<String, dynamic> json) =>
      _$StacSafeAreaFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSafeAreaToJson(this);
}
