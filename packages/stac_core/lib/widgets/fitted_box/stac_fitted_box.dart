import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_fitted_box.g.dart';

@JsonSerializable()
class StacFittedBox extends StacWidget {
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

  @override
  String get type => 'fittedBox';

  factory StacFittedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFittedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacFittedBoxToJson(this);
}
