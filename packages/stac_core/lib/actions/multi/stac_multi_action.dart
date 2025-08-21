import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';

part 'stac_multi_action.g.dart';

@JsonSerializable()
class StacMultiAction extends StacAction {
  const StacMultiAction({required this.actions, this.sync = false});

  final List<StacAction>? actions;
  final bool sync;

  @override
  String get actionType => 'multiAction';

  factory StacMultiAction.fromJson(Map<String, dynamic> json) =>
      _$StacMultiActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacMultiActionToJson(this);
}
