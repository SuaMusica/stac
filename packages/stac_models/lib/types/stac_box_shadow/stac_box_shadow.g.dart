// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBoxShadow _$StacBoxShadowFromJson(Map<String, dynamic> json) =>
    StacBoxShadow(
      color: json['color'] as String?,
      blurRadius: json['blurRadius'] == null
          ? null
          : StacDouble.fromJson(json['blurRadius']),
      offset: json['offset'] == null
          ? null
          : StacOffset.fromJson(json['offset'] as Map<String, dynamic>),
      spreadRadius: json['spreadRadius'] == null
          ? null
          : StacDouble.fromJson(json['spreadRadius']),
      blurStyle: $enumDecodeNullable(_$StacBlurStyleEnumMap, json['blurStyle']),
    );

Map<String, dynamic> _$StacBoxShadowToJson(StacBoxShadow instance) =>
    <String, dynamic>{
      'color': instance.color,
      'blurRadius': instance.blurRadius?.toJson(),
      'offset': instance.offset?.toJson(),
      'spreadRadius': instance.spreadRadius?.toJson(),
      'blurStyle': _$StacBlurStyleEnumMap[instance.blurStyle],
    };

const _$StacBlurStyleEnumMap = {
  StacBlurStyle.normal: 'normal',
  StacBlurStyle.solid: 'solid',
  StacBlurStyle.outer: 'outer',
  StacBlurStyle.inner: 'inner',
};
