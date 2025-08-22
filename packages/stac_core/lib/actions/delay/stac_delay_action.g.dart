// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_delay_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDelayAction _$StacDelayActionFromJson(Map<String, dynamic> json) =>
    StacDelayAction(
      milliseconds: (json['milliseconds'] as num?)?.toInt() ?? 1000,
    );

Map<String, dynamic> _$StacDelayActionToJson(StacDelayAction instance) =>
    <String, dynamic>{
      'milliseconds': instance.milliseconds,
      'actionType': instance.actionType,
    };
