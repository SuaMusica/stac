import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_get_form_value.g.dart';

@JsonSerializable()
class StacGetFormValue extends StacAction {
  const StacGetFormValue({required this.id});

  final String id;

  @override
  String get actionType => ActionType.getFormValue.name;

  factory StacGetFormValue.fromJson(Map<String, dynamic> json) =>
      _$StacGetFormValueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacGetFormValueToJson(this);
}
