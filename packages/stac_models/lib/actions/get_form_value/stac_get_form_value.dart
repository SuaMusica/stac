import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_action.dart';

part 'stac_get_form_value.g.dart';

@JsonSerializable()
class StacGetFormValue extends StacAction {
  const StacGetFormValue({required this.id});

  final String id;

  @override
  String get actionType => 'getFormValue';

  factory StacGetFormValue.fromJson(Map<String, dynamic> json) =>
      _$StacGetFormValueFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacGetFormValueToJson(this);
}
