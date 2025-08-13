// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_network_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacNetworkWidget _$StacNetworkWidgetFromJson(Map<String, dynamic> json) =>
    StacNetworkWidget(
      request: StacNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$StacNetworkWidgetToJson(StacNetworkWidget instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'type': instance.type,
    };
