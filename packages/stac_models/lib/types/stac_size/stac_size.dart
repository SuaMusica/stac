import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_size.g.dart';

@JsonSerializable()
class StacSize implements StacElement {
  const StacSize(this.width, this.height);

  final double width;
  final double height;

  factory StacSize.fromJson(Map<String, dynamic> json) =>
      _$StacSizeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSizeToJson(this);
}
