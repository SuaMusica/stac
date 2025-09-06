import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_network_request.g.dart';

/// HTTP methods for [StacNetworkRequest].
///
/// Common verbs used for RESTful requests.
enum Method {
  /// HTTP GET request.
  get,

  /// HTTP POST request.
  post,

  /// HTTP PUT request.
  put,

  /// HTTP DELETE request.
  delete,
}

@JsonSerializable()
class StacNetworkRequest extends StacAction {
  /// Creates a [StacNetworkRequest] to perform an HTTP call.
  const StacNetworkRequest({
    required this.url,
    this.method = Method.get,
    this.queryParameters,
    this.headers,
    this.contentType,
    this.body,
    this.results = const [],
  });

  /// The absolute or relative URL to request.
  final String url;

  /// The HTTP method to use. Defaults to [Method.get].
  final Method method;

  /// Optional key-value pairs appended to the URL as query parameters.
  final Map<String, dynamic>? queryParameters;

  /// Optional request headers.
  final Map<String, dynamic>? headers;

  /// The Content-Type header value (e.g., `application/json`).
  final String? contentType;

  /// The request payload. Can be a map, list, string, or bytes depending on encoder.
  final dynamic body;

  /// List of conditional results that map a response status code to an action.
  final List<StacNetworkResult> results;

  @override
  String get actionType => ActionType.networkRequest.name;

  /// Creates a [StacNetworkRequest] from a JSON map.
  factory StacNetworkRequest.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkRequestFromJson(json);

  /// Converts this [StacNetworkRequest] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacNetworkRequestToJson(this);
}

@JsonSerializable()
class StacNetworkResult {
  /// Creates a mapping from an HTTP [statusCode] to an action payload.
  const StacNetworkResult({required this.statusCode, required this.action});

  /// The HTTP status code to match (e.g., 200, 400, 500).
  final int statusCode;

  /// The action to execute when [statusCode] matches.
  ///
  /// This should be a JSON map that describes a Stac action
  /// (e.g., `{ "type": "navigate", ... }`).
  final Map<String, dynamic> action;

  /// Creates a [StacNetworkResult] from a JSON map.
  factory StacNetworkResult.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkResultFromJson(json);

  /// Converts this [StacNetworkResult] instance to a JSON map.
  Map<String, dynamic> toJson() => _$StacNetworkResultToJson(this);
}
