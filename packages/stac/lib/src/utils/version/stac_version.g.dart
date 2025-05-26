// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacVersionImpl _$$StacVersionImplFromJson(Map<String, dynamic> json) =>
    _$StacVersionImpl(
      versionCode: json['versionCode'] as String,
      condition: StacVersion.fromJsonCondition(json['condition'] as String?),
    );

Map<String, dynamic> _$$StacVersionImplToJson(_$StacVersionImpl instance) =>
    <String, dynamic>{
      'versionCode': instance.versionCode,
      'condition': _$StacConditionVersionEnumMap[instance.condition]!,
    };

const _$StacConditionVersionEnumMap = {
  StacConditionVersion.greaterThan: 'greaterThan',
  StacConditionVersion.greaterThanOrEqual: 'greaterThanOrEqual',
  StacConditionVersion.lessThan: 'lessThan',
  StacConditionVersion.lessThanOrEqual: 'lessThanOrEqual',
  StacConditionVersion.equal: 'equal',
  StacConditionVersion.notEqual: 'notEqual',
};
