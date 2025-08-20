import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_network_widget.g.dart';

/// A Stac model representing a network-driven widget.
///
/// This widget triggers a [StacNetworkRequest] to fetch a Stac UI JSON from a
/// URL and renders it.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacNetworkWidget(
///   request: StacNetworkRequest(
///     url: 'https://example.com/data',
///     method: 'get',
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "networkWidget",
///   "request": {
///     "actionType": "networkRequest",
///     "url": "https://example.com/data",
///     "method": "get"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacNetworkWidget extends StacWidget {
  /// Creates a [StacNetworkWidget].
  const StacNetworkWidget({required this.request});

  /// The network request to execute.
  final StacNetworkRequest request;

  /// Widget type identifier.
  @override
  String get type => 'networkWidget';

  /// Creates a [StacNetworkWidget] from a JSON map.
  factory StacNetworkWidget.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkWidgetFromJson(json);

  /// Converts this [StacNetworkWidget] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacNetworkWidgetToJson(this);
}
