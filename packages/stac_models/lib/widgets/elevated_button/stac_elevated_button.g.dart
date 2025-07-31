// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_elevated_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacElevatedButton _$StacElevatedButtonFromJson(Map<String, dynamic> json) =>
    StacElevatedButton(
      onPressed: json['onPressed'] as Map<String, dynamic>?,
      onLongPress: json['onLongPress'] as Map<String, dynamic>?,
      onHover: json['onHover'] as Map<String, dynamic>?,
      onFocusChange: json['onFocusChange'] as Map<String, dynamic>?,
      style: json['style'] == null
          ? null
          : StacButtonStyle.fromJson(json['style'] as Map<String, dynamic>),
      autofocus: json['autofocus'] as bool?,
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
      child: const StacWidgetConverter().fromJson(
        json['child'] as Map<String, dynamic>?,
      ),
    );

Map<String, dynamic> _$StacElevatedButtonToJson(StacElevatedButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed,
      'onLongPress': instance.onLongPress,
      'onHover': instance.onHover,
      'onFocusChange': instance.onFocusChange,
      'style': instance.style?.toJson(),
      'autofocus': instance.autofocus,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'child': const StacWidgetConverter().toJson(instance.child),
      'type': instance.type,
    };

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
