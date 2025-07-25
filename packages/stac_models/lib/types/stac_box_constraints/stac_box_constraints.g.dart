// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_box_constraints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBoxConstraints _$StacBoxConstraintsFromJson(Map<String, dynamic> json) =>
    StacBoxConstraints(
      minWidth: StacDouble.fromJson(json['minWidth']),
      maxWidth: StacDouble.fromJson(json['maxWidth']),
      minHeight: StacDouble.fromJson(json['minHeight']),
      maxHeight: StacDouble.fromJson(json['maxHeight']),
    );

Map<String, dynamic> _$StacBoxConstraintsToJson(StacBoxConstraints instance) =>
    <String, dynamic>{
      'minWidth': instance.minWidth.toJson(),
      'maxWidth': instance.maxWidth.toJson(),
      'minHeight': instance.minHeight.toJson(),
      'maxHeight': instance.maxHeight.toJson(),
    };
