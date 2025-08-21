import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';

part 'stac_delay_action.g.dart';

@JsonSerializable()
class StacDelayAction extends StacAction {
  const StacDelayAction({this.milliseconds = 1000});

  final int milliseconds;

  @override
  String get actionType => 'delay';

  factory StacDelayAction.fromJson(Map<String, dynamic> json) =>
      _$StacDelayActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDelayActionToJson(this);
}
