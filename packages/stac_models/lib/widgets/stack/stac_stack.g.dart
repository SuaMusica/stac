// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_stack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacStack _$StacStackFromJson(Map<String, dynamic> json) => StacStack(
  alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  fit: $enumDecodeNullable(_$StacStackFitEnumMap, json['fit']),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  children: const StacWidgetListJsonConverter().fromJson(
    json['children'] as List<Map<String, dynamic>>?,
  ),
);

Map<String, dynamic> _$StacStackToJson(StacStack instance) => <String, dynamic>{
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
  'fit': _$StacStackFitEnumMap[instance.fit],
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'children': const StacWidgetListJsonConverter().toJson(instance.children),
};

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
};

const _$StacStackFitEnumMap = {
  StacStackFit.loose: 'loose',
  StacStackFit.expand: 'expand',
  StacStackFit.passthrough: 'passthrough',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
