// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacVersionImpl _$$StacVersionImplFromJson(Map<String, dynamic> json) =>
    _$StacVersionImpl(
      version: json['version'] as String,
      condition: $enumDecode(_$StacConditionVersionEnumMap, json['condition']),
    );

Map<String, dynamic> _$$StacVersionImplToJson(_$StacVersionImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
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
