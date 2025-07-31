import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_spacer.g.dart';

@JsonSerializable()
class StacSpacer extends StacWidget {
  const StacSpacer({this.flex});

  final int? flex;

  @override
  String get type => 'spacer';

  factory StacSpacer.fromJson(Map<String, dynamic> json) =>
      _$StacSpacerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSpacerToJson(this);
}
