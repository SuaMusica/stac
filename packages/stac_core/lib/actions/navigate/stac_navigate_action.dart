import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_action.dart';

part 'stac_navigate_action.g.dart';

enum NavigationStyle {
  push,
  pop,
  pushReplacement,
  pushAndRemoveAll,
  popAll,
  pushNamed,
  pushNamedAndRemoveAll,
  pushReplacementNamed,
}

@JsonSerializable()
class StacNavigateAction extends StacAction {
  const StacNavigateAction({
    this.request,
    this.widgetJson,
    this.assetPath,
    this.routeName,
    this.navigationStyle,
    this.result,
    this.arguments,
  });

  final StacNetworkRequest? request;
  final Map<String, dynamic>? widgetJson;
  final String? assetPath;
  final String? routeName;
  final NavigationStyle? navigationStyle;
  final Map<String, dynamic>? result;
  final Map<String, dynamic>? arguments;

  @override
  String get actionType => 'navigate';

  factory StacNavigateAction.fromJson(Map<String, dynamic> json) =>
      _$StacNavigateActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacNavigateActionToJson(this);
}
