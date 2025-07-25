import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/types/stac_double.dart';

part 'stac_box_constraints.g.dart';

@JsonSerializable()
class StacBoxConstraints {
  const StacBoxConstraints({
    required this.minWidth,
    required this.maxWidth,
    required this.minHeight,
    required this.maxHeight,
  });

  final StacDouble minWidth;
  final StacDouble maxWidth;
  final StacDouble minHeight;
  final StacDouble maxHeight;

  factory StacBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$StacBoxConstraintsFromJson(json);

  Map<String, dynamic> toJson() => _$StacBoxConstraintsToJson(this);
}
