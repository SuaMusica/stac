// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_span.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTextSpan _$StacTextSpanFromJson(Map<String, dynamic> json) => StacTextSpan(
  text: json['text'] as String?,
  style: const StacTextStyleConverter().fromJson(json['style']),
  children:
      (json['children'] as List<dynamic>?)
          ?.map((e) => StacTextSpan.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  onTap: json['onTap'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$StacTextSpanToJson(StacTextSpan instance) =>
    <String, dynamic>{
      'text': instance.text,
      'style': const StacTextStyleConverter().toJson(instance.style),
      'children': instance.children.map((e) => e.toJson()).toList(),
      'onTap': instance.onTap,
    };
