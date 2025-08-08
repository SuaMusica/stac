import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_action.dart';

part 'stac_set_value_action.g.dart';

@JsonSerializable()
class StacSetValueAction extends StacAction {
  const StacSetValueAction({this.values, this.action});

  final List<Map<String, dynamic>>? values;
  final Map<String, dynamic>? action;

  @override
  String get actionType => 'setValue';

  factory StacSetValueAction.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSetValueActionToJson(this);
}
