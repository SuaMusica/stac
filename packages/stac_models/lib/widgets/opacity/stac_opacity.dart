import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/stac_widget.dart';

part 'stac_opacity.g.dart';

@JsonSerializable()
class StacOpacity extends StacWidget {
  const StacOpacity({
    required this.opacity,
    this.alwaysIncludeSemantics,
    this.child,
  });

  @DoubleConverter()
  final double opacity;

  final bool? alwaysIncludeSemantics;

  final StacWidget? child;

  @override
  String get type => 'opacity';

  factory StacOpacity.fromJson(Map<String, dynamic> json) =>
      _$StacOpacityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacOpacityToJson(this);
}
