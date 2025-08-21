import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/snack_bar/stac_snack_bar_action.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/painting/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/types/stac_hit_test_behavior.dart';
import 'package:stac_core/types/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/types/stac_snack_bar_behavior.dart';
import 'package:stac_core/types/stac_dismiss_direction.dart';
import 'package:stac_core/types/stac_clip.dart';
import 'package:stac_core/types/stac_duration/stac_duration.dart';

part 'stac_snack_bar.g.dart';

@JsonSerializable()
class StacSnackBar extends StacAction {
  const StacSnackBar({
    required this.content,
    this.backgroundColor,
    this.elevation,
    this.margin,
    this.padding,
    this.width,
    this.shape,
    this.hitTestBehavior,
    this.behavior,
    this.action,
    this.actionOverflowThreshold,
    this.showCloseIcon,
    this.closeIconColor,
    this.duration,
    this.onVisible,
    this.dismissDirection,
    this.clipBehavior,
  });

  final Map<String, dynamic> content;
  final String? backgroundColor;
  final double? elevation;
  final StacEdgeInsets? margin;
  final StacEdgeInsets? padding;
  final double? width;
  final StacShapeBorder? shape;
  final StacHitTestBehavior? hitTestBehavior;
  final StacSnackBarBehavior? behavior;
  final StacSnackBarAction? action;
  final double? actionOverflowThreshold;
  final bool? showCloseIcon;
  final String? closeIconColor;
  final StacDuration? duration;
  final Map<String, dynamic>? onVisible;
  final StacDismissDirection? dismissDirection;
  final StacClip? clipBehavior;

  @override
  String get actionType => 'showSnackBar';

  factory StacSnackBar.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSnackBarToJson(this);
}

// uses types from stac_core/types
