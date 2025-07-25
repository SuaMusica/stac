// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacRect _$StacRectFromJson(Map<String, dynamic> json) => StacRect(
  rectType: $enumDecode(_$StacRectTypeEnumMap, json['rectType']),
  left: json['left'] == null ? null : StacDouble.fromJson(json['left']),
  top: json['top'] == null ? null : StacDouble.fromJson(json['top']),
  right: json['right'] == null ? null : StacDouble.fromJson(json['right']),
  bottom: json['bottom'] == null ? null : StacDouble.fromJson(json['bottom']),
  width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
  height: json['height'] == null ? null : StacDouble.fromJson(json['height']),
  center: json['center'] == null
      ? null
      : StacOffset.fromJson(json['center'] as Map<String, dynamic>),
  radius: json['radius'] == null ? null : StacDouble.fromJson(json['radius']),
  a: json['a'] == null
      ? null
      : StacOffset.fromJson(json['a'] as Map<String, dynamic>),
  b: json['b'] == null
      ? null
      : StacOffset.fromJson(json['b'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacRectToJson(StacRect instance) => <String, dynamic>{
  'rectType': _$StacRectTypeEnumMap[instance.rectType]!,
  'left': instance.left?.toJson(),
  'top': instance.top?.toJson(),
  'right': instance.right?.toJson(),
  'bottom': instance.bottom?.toJson(),
  'width': instance.width?.toJson(),
  'height': instance.height?.toJson(),
  'center': instance.center?.toJson(),
  'radius': instance.radius?.toJson(),
  'a': instance.a?.toJson(),
  'b': instance.b?.toJson(),
};

const _$StacRectTypeEnumMap = {
  StacRectType.fromCenter: 'fromCenter',
  StacRectType.fromCircle: 'fromCircle',
  StacRectType.fromLTRB: 'fromLTRB',
  StacRectType.fromLTWH: 'fromLTWH',
  StacRectType.fromPoints: 'fromPoints',
};
