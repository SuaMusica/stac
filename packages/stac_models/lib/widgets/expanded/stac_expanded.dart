import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';

part 'stac_expanded.g.dart';

@JsonSerializable()
class StacExpanded extends StacWidget {
  const StacExpanded({this.flex, this.child});

  final int? flex;

  final StacWidget? child;

  @override
  String get type => 'expanded';

  factory StacExpanded.fromJson(Map<String, dynamic> json) =>
      _$StacExpandedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacExpandedToJson(this);
}
