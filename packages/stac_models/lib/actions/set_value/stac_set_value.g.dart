// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_set_value_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSetValue _$StacSetValueFromJson(Map<String, dynamic> json) => StacSetValue(
  values: (json['values'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList(),
  action: json['action'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$StacSetValueToJson(StacSetValue instance) =>
    <String, dynamic>{
      'values': instance.values,
      'action': instance.action,
      'actionType': instance.actionType,
    };
