import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/types/stac_border/stac_border.dart';
import 'package:stac_core/types/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/core/stac_action.dart';

part 'stac_modal_bottom_sheet_action.g.dart';

@JsonSerializable()
class StacModalBottomSheetAction extends StacAction {
  const StacModalBottomSheetAction({
    this.widget,
    this.request,
    this.assetPath,
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled = false,
    this.useRootNavigator = false,
    this.isDismissible = true,
    this.enableDrag = true,
    this.showDragHandle,
    this.useSafeArea = false,
  });

  final StacWidget? widget;
  final StacNetworkRequest? request;
  final String? assetPath;
  final String? backgroundColor;
  final String? barrierLabel;
  final double? elevation;
  final StacBorder? shape;
  final StacBoxConstraints? constraints;
  final String? barrierColor;
  final bool isScrollControlled;
  final bool useRootNavigator;
  final bool isDismissible;
  final bool enableDrag;
  final bool? showDragHandle;
  final bool useSafeArea;

  @override
  String get actionType => 'showModalBottomSheet';

  factory StacModalBottomSheetAction.fromJson(Map<String, dynamic> json) =>
      _$StacModalBottomSheetActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacModalBottomSheetActionToJson(this);
}
