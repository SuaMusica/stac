import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/types/stac_flex_fit.dart';

part 'stac_flexible.g.dart';

@JsonSerializable()
class StacFlexible extends StacWidget {
  const StacFlexible({this.flex, this.fit, required this.child});

  final int? flex;

  final StacFlexFit? fit;

  final StacWidget? child;

  @override
  String get type => 'flexible';

  factory StacFlexible.fromJson(Map<String, dynamic> json) =>
      _$StacFlexibleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacFlexibleToJson(this);
}
