import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/stac_widget.dart';

part 'stac_aspect_ratio.g.dart';

@JsonSerializable()
class StacAspectRatio extends StacWidget {
  const StacAspectRatio({required this.aspectRatio, required this.child});

  @DoubleConverter()
  final double aspectRatio;

  final StacWidget? child;

  @override
  String get type => 'aspectRatio';

  factory StacAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$StacAspectRatioFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacAspectRatioToJson(this);
}
