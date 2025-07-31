import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';

part 'stac_box_constraints.g.dart';

@JsonSerializable()
class StacBoxConstraints {
  const StacBoxConstraints({
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  @DoubleConverter()
  final double? minWidth;

  @DoubleConverter()
  final double? maxWidth;

  @DoubleConverter()
  final double? minHeight;

  @DoubleConverter()
  final double? maxHeight;

  factory StacBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$StacBoxConstraintsFromJson(json);

  Map<String, dynamic> toJson() => _$StacBoxConstraintsToJson(this);
}
