import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/types/stac_dialog_traversal_edge_behavior.dart';

part 'stac_dialog_action.g.dart';

@JsonSerializable()
class StacDialogAction extends StacAction {
  const StacDialogAction({
    this.widget,
    this.request,
    this.assetPath,
    this.barrierDismissible = true,
    this.barrierColor,
    this.barrierLabel,
    this.useSafeArea = true,
    this.traversalEdgeBehavior,
  });

  final Map<String, dynamic>? widget;
  final StacNetworkRequest? request;
  final String? assetPath;
  final bool barrierDismissible;
  final String? barrierColor;
  final String? barrierLabel;
  final bool useSafeArea;
  final StacDialogTraversalEdgeBehavior? traversalEdgeBehavior;

  @override
  String get actionType => 'showDialog';

  factory StacDialogAction.fromJson(Map<String, dynamic> json) =>
      _$StacDialogActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDialogActionToJson(this);
}
