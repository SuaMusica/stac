// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_expanded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacExpanded _$StacExpandedFromJson(Map<String, dynamic> json) => StacExpanded(
  flex: (json['flex'] as num?)?.toInt(),
  child: const StacWidgetConverter().fromJson(
    json['child'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$StacExpandedToJson(StacExpanded instance) =>
    <String, dynamic>{
      'flex': instance.flex,
      'child': const StacWidgetConverter().toJson(instance.child),
      'type': instance.type,
    };
