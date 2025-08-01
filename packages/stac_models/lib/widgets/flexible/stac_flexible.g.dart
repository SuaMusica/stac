// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_flexible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFlexible _$StacFlexibleFromJson(Map<String, dynamic> json) => StacFlexible(
  flex: (json['flex'] as num?)?.toInt(),
  fit: $enumDecodeNullable(_$StacFlexFitEnumMap, json['fit']),
  child: const StacWidgetConverter().fromJson(
    json['child'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$StacFlexibleToJson(StacFlexible instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'fit': _$StacFlexFitEnumMap[instance.fit],
      'child': const StacWidgetConverter().toJson(instance.child),
      'type': instance.type,
    };

const _$StacFlexFitEnumMap = {
  StacFlexFit.tight: 'tight',
  StacFlexFit.loose: 'loose',
};
