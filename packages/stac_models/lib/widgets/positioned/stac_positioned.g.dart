// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_positioned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacPositioned _$StacPositionedFromJson(
  Map<String, dynamic> json,
) => StacPositioned(
  left: json['left'] == null ? null : StacDouble.fromJson(json['left']),
  top: json['top'] == null ? null : StacDouble.fromJson(json['top']),
  right: json['right'] == null ? null : StacDouble.fromJson(json['right']),
  bottom: json['bottom'] == null ? null : StacDouble.fromJson(json['bottom']),
  width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
  height: json['height'] == null ? null : StacDouble.fromJson(json['height']),
  child: const StacWidgetJsonConverter().fromJson(
    json['child'] as Map<String, dynamic>?,
  ),
);

Map<String, dynamic> _$StacPositionedToJson(StacPositioned instance) =>
    <String, dynamic>{
      'left': instance.left?.toJson(),
      'top': instance.top?.toJson(),
      'right': instance.right?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'width': instance.width?.toJson(),
      'height': instance.height?.toJson(),
      'child': const StacWidgetJsonConverter().toJson(instance.child),
    };
