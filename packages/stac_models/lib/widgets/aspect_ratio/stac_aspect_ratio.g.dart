// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_aspect_ratio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacAspectRatio _$StacAspectRatioFromJson(Map<String, dynamic> json) =>
    StacAspectRatio(
      aspectRatio: (json['aspectRatio'] as num).toDouble(),
      child: const StacWidgetConverter().fromJson(
        json['child'] as Map<String, dynamic>?,
      ),
    );

Map<String, dynamic> _$StacAspectRatioToJson(StacAspectRatio instance) =>
    <String, dynamic>{
      'aspectRatio': instance.aspectRatio,
      'child': const StacWidgetConverter().toJson(instance.child),
      'type': instance.type,
    };
