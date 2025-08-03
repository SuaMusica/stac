import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_action.dart';

part 'stac_network_request.g.dart';

enum Method { get, post, put, delete }

@JsonSerializable()
class StacNetworkRequest extends StacAction {
  const StacNetworkRequest({
    required this.url,
    this.method = Method.get,
    this.queryParameters,
    this.headers,
    this.contentType,
    this.body,
    this.results = const [],
  });

  final String url;
  final Method method;
  final Map<String, dynamic>? queryParameters;
  final Map<String, dynamic>? headers;
  final String? contentType;
  final dynamic body;
  final List<StacNetworkResult> results;

  @override
  String get actionType => 'networkRequest';

  factory StacNetworkRequest.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacNetworkRequestToJson(this);
}

@JsonSerializable()
class StacNetworkResult {
  const StacNetworkResult({required this.statusCode, required this.action});

  final int statusCode;
  final Map<String, dynamic> action;

  factory StacNetworkResult.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkResultFromJson(json);

  Map<String, dynamic> toJson() => _$StacNetworkResultToJson(this);
}
