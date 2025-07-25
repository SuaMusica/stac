// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTextTheme _$StacTextThemeFromJson(Map<String, dynamic> json) =>
    _StacTextTheme(
      displayLarge: json['displayLarge'] == null
          ? null
          : StacTextStyle.fromJson(
              json['displayLarge'] as Map<String, dynamic>),
      displayMedium: json['displayMedium'] == null
          ? null
          : StacTextStyle.fromJson(
              json['displayMedium'] as Map<String, dynamic>),
      displaySmall: json['displaySmall'] == null
          ? null
          : StacTextStyle.fromJson(
              json['displaySmall'] as Map<String, dynamic>),
      headlineLarge: json['headlineLarge'] == null
          ? null
          : StacTextStyle.fromJson(
              json['headlineLarge'] as Map<String, dynamic>),
      headlineMedium: json['headlineMedium'] == null
          ? null
          : StacTextStyle.fromJson(
              json['headlineMedium'] as Map<String, dynamic>),
      headlineSmall: json['headlineSmall'] == null
          ? null
          : StacTextStyle.fromJson(
              json['headlineSmall'] as Map<String, dynamic>),
      titleLarge: json['titleLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['titleLarge'] as Map<String, dynamic>),
      titleMedium: json['titleMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['titleMedium'] as Map<String, dynamic>),
      titleSmall: json['titleSmall'] == null
          ? null
          : StacTextStyle.fromJson(json['titleSmall'] as Map<String, dynamic>),
      bodyLarge: json['bodyLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['bodyLarge'] as Map<String, dynamic>),
      bodyMedium: json['bodyMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['bodyMedium'] as Map<String, dynamic>),
      bodySmall: json['bodySmall'] == null
          ? null
          : StacTextStyle.fromJson(json['bodySmall'] as Map<String, dynamic>),
      labelLarge: json['labelLarge'] == null
          ? null
          : StacTextStyle.fromJson(json['labelLarge'] as Map<String, dynamic>),
      labelMedium: json['labelMedium'] == null
          ? null
          : StacTextStyle.fromJson(json['labelMedium'] as Map<String, dynamic>),
      labelSmall: json['labelSmall'] == null
          ? null
          : StacTextStyle.fromJson(json['labelSmall'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacTextThemeToJson(_StacTextTheme instance) =>
    <String, dynamic>{
      'displayLarge': instance.displayLarge,
      'displayMedium': instance.displayMedium,
      'displaySmall': instance.displaySmall,
      'headlineLarge': instance.headlineLarge,
      'headlineMedium': instance.headlineMedium,
      'headlineSmall': instance.headlineSmall,
      'titleLarge': instance.titleLarge,
      'titleMedium': instance.titleMedium,
      'titleSmall': instance.titleSmall,
      'bodyLarge': instance.bodyLarge,
      'bodyMedium': instance.bodyMedium,
      'bodySmall': instance.bodySmall,
      'labelLarge': instance.labelLarge,
      'labelMedium': instance.labelMedium,
      'labelSmall': instance.labelSmall,
    };
