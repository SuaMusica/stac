import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_shape_border/stac_shape_border.dart';

export 'stac_alert_dialog_parser.dart';

part 'stac_alert_dialog.freezed.dart';
part 'stac_alert_dialog.g.dart';

@freezed
abstract class StacAlertDialog with _$StacAlertDialog {
  const factory StacAlertDialog({
    Map<String, dynamic>? icon,
    StacEdgeInsets? iconPadding,
    String? iconColor,
    Map<String, dynamic>? title,
    StacEdgeInsets? titlePadding,
    StacTextStyle? titleTextStyle,
    Map<String, dynamic>? content,
    StacEdgeInsets? contentPadding,
    StacTextStyle? contentTextStyle,
    List<Map<String, dynamic>>? actions,
    StacEdgeInsets? actionsPadding,
    MainAxisAlignment? actionsAlignment,
    OverflowBarAlignment? actionsOverflowAlignment,
    VerticalDirection? actionsOverflowDirection,
    StacDouble? actionsOverflowButtonSpacing,
    StacEdgeInsets? buttonPadding,
    String? backgroundColor,
    StacDouble? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? semanticLabel,
    @Default(StacEdgeInsets(left: 40, right: 40, top: 24, bottom: 24))
    StacEdgeInsets insetPadding,
    @Default(Clip.none) Clip clipBehavior,
    StacShapeBorder? shape,
    StacAlignmentGeometry? alignment,
    @Default(false) bool scrollable,
  }) = _StacAlertDialog;

  factory StacAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$StacAlertDialogFromJson(json);
}
