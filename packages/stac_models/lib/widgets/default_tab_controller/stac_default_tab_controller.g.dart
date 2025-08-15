// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_default_tab_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDefaultTabController _$StacDefaultTabControllerFromJson(
  Map<String, dynamic> json,
) => StacDefaultTabController(
  length: (json['length'] as num).toInt(),
  initialIndex: (json['initialIndex'] as num?)?.toInt(),
  child: StacWidget.fromJson(json['child'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacDefaultTabControllerToJson(
  StacDefaultTabController instance,
) => <String, dynamic>{
  'length': instance.length,
  'initialIndex': instance.initialIndex,
  'child': instance.child.toJson(),
  'type': instance.type,
};
