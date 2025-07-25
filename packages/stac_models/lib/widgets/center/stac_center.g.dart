// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCenter _$StacCenterFromJson(Map<String, dynamic> json) => StacCenter(
  widthFactor: json['widthFactor'] == null
      ? null
      : StacDouble.fromJson(json['widthFactor']),
  heightFactor: json['heightFactor'] == null
      ? null
      : StacDouble.fromJson(json['heightFactor']),
  child: const StacWidgetJsonConverter().fromJson(
    json['child'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$StacCenterToJson(StacCenter instance) =>
    <String, dynamic>{
      'widthFactor': instance.widthFactor?.toJson(),
      'heightFactor': instance.heightFactor?.toJson(),
      'child': const StacWidgetJsonConverter().toJson(instance.child),
    };
