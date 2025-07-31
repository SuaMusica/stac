import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/painting/stac_color/stac_colors.dart';
import 'package:stac_models/painting/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_models/painting/stac_system_ui_overlay_style/stac_system_ui_overlay_style.dart';
import 'package:stac_models/painting/stac_text_style/stac_text_style.dart';
import 'package:stac_models/types/stac_clip.dart';

part 'stac_app_bar.g.dart';

@JsonSerializable()
class StacAppBar extends StacWidget {
  StacAppBar({
    this.leading,
    this.automaticallyImplyLeading,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.scrolledUnderElevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.backgroundColor,
    this.foregroundColor,
    this.primary,
    this.centerTitle,
    this.excludeHeaderSemantics,
    this.titleSpacing,
    this.toolbarOpacity,
    this.bottomOpacity,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
    this.forceMaterialTransparency,
    this.useDefaultSemanticsOrder,
    this.clipBehavior,
    this.actionsPadding,
  });

  @StacWidgetConverter()
  final StacWidget? leading;

  final bool? automaticallyImplyLeading;

  @StacWidgetConverter()
  final StacWidget? title;

  @StacWidgetListConverter()
  final List<StacWidget>? actions;

  @StacWidgetConverter()
  final StacWidget? flexibleSpace;

  @StacWidgetConverter()
  final StacWidget? bottom;

  final double? elevation;

  final double? scrolledUnderElevation;

  final StacColor? shadowColor;

  final StacColor? surfaceTintColor;
  // Todo: Add support for shape
  // final shape;

  final StacColor? backgroundColor;

  final StacColor? foregroundColor;

  // final iconTheme;

  // final actionsIconTheme;

  final bool? primary;

  final bool? centerTitle;

  final bool? excludeHeaderSemantics;

  final double? titleSpacing;

  final double? toolbarOpacity;

  final double? bottomOpacity;

  final double? toolbarHeight;

  final double? leadingWidth;

  final StacTextStyle? toolbarTextStyle;

  final StacTextStyle? titleTextStyle;

  final StacSystemUIOverlayStyle? systemOverlayStyle;

  final bool? forceMaterialTransparency;

  final bool? useDefaultSemanticsOrder;

  final StacClip? clipBehavior;

  final StacEdgeInsets? actionsPadding;

  factory StacAppBar.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacAppBarToJson(this);

  @override
  String get type => 'appBar';
}
