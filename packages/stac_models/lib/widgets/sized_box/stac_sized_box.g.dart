// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_sized_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSizedBox _$StacSizedBoxFromJson(Map<String, dynamic> json) => StacSizedBox(
  width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
  height: json['height'] == null ? null : StacDouble.fromJson(json['height']),
  child: const StacWidgetJsonConverter().fromJson(
    json['child'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$StacSizedBoxToJson(StacSizedBox instance) =>
    <String, dynamic>{
      'width': instance.width?.toJson(),
      'height': instance.height?.toJson(),
      'child': const StacWidgetJsonConverter().toJson(instance.child),
    };
