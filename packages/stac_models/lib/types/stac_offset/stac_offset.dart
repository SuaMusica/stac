import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_offset.g.dart';

@JsonSerializable()
class StacOffset implements StacElement {
  const StacOffset({required this.dx, required this.dy});

  static const StacOffset zero = StacOffset(dx: 0, dy: 0);

  final double dx;
  final double dy;

  factory StacOffset.fromJson(Map<String, dynamic> json) =>
      _$StacOffsetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacOffsetToJson(this);
}
