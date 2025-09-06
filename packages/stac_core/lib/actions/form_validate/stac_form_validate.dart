import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_form_validate.g.dart';

@JsonSerializable()
class StacFormValidate extends StacAction {
  const StacFormValidate({this.isValid, this.isNotValid});

  final StacAction? isValid;
  final StacAction? isNotValid;

  @override
  String get actionType => ActionType.validateForm.name;

  factory StacFormValidate.fromJson(Map<String, dynamic> json) =>
      _$StacFormValidateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacFormValidateToJson(this);
}
