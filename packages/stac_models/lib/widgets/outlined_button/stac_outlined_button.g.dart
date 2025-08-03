// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_outlined_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacOutlinedButton _$StacOutlinedButtonFromJson(Map<String, dynamic> json) =>
    StacOutlinedButton(
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
      child: json['child'] == null
          ? null
          : StacWidget.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacOutlinedButtonToJson(StacOutlinedButton instance) =>
    <String, dynamic>{
      'onPressed': instance.onPressed,
      'onLongPress': instance.onLongPress,
      'onHover': instance.onHover,
      'onFocusChange': instance.onFocusChange,
      'style': instance.style?.toJson(),
      'autofocus': instance.autofocus,
      'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
      'child': instance.child?.toJson(),
      'type': instance.type,
    };

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
