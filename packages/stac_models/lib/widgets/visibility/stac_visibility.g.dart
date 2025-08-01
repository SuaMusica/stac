// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_visibility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacVisibility _$StacVisibilityFromJson(Map<String, dynamic> json) =>
    StacVisibility(
      child: const StacWidgetConverter().fromJson(
        json['child'] as Map<String, dynamic>?,
      ),
      visible: json['visible'] as bool?,
      replacement: const StacWidgetConverter().fromJson(
        json['replacement'] as Map<String, dynamic>?,
      ),
      maintainState: json['maintainState'] as bool?,
      maintainAnimation: json['maintainAnimation'] as bool?,
      maintainSize: json['maintainSize'] as bool?,
      maintainSemantics: json['maintainSemantics'] as bool?,
      maintainInteractivity: json['maintainInteractivity'] as bool?,
    );

Map<String, dynamic> _$StacVisibilityToJson(StacVisibility instance) =>
    <String, dynamic>{
      'child': const StacWidgetConverter().toJson(instance.child),
      'visible': instance.visible,
      'replacement': const StacWidgetConverter().toJson(instance.replacement),
      'maintainState': instance.maintainState,
      'maintainAnimation': instance.maintainAnimation,
      'maintainSize': instance.maintainSize,
      'maintainSemantics': instance.maintainSemantics,
      'maintainInteractivity': instance.maintainInteractivity,
      'type': instance.type,
    };
