import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_system_ui_overlay_style_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/sliver_app_bar/stac_sliver_app_bar.dart';

class StacSliverAppBarParser extends StacParser<StacSliverAppBar> {
  const StacSliverAppBarParser();

  @override
  String get type => WidgetType.sliverAppBar.name;

  @override
  StacSliverAppBar getModel(Map<String, dynamic> json) =>
      StacSliverAppBar.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverAppBar model) {
    return SliverAppBar(
      leading: model.leading?.parse(context),
      automaticallyImplyLeading: model.automaticallyImplyLeading ?? true,
      title: model.title?.parse(context),
      actions: model.actions?.parseList(context) ?? const <Widget>[],
      flexibleSpace: model.flexibleSpace?.parse(context),
      bottom: model.bottom?.parsePreferredSizeWidget(context),
      elevation: model.elevation,
      scrolledUnderElevation: model.scrolledUnderElevation,
      shadowColor: model.shadowColor.toColor(context),
      surfaceTintColor: model.surfaceTintColor.toColor(context),
      forceElevated: model.forceElevated ?? false,
      backgroundColor: model.backgroundColor.toColor(context),
      foregroundColor: model.foregroundColor.toColor(context),
      primary: model.primary ?? true,
      centerTitle: model.centerTitle,
      excludeHeaderSemantics: model.excludeHeaderSemantics ?? false,
      titleSpacing: model.titleSpacing,
      collapsedHeight: model.collapsedHeight,
      expandedHeight: model.expandedHeight,
      floating: model.floating ?? false,
      pinned: model.pinned ?? true,
      snap: model.snap ?? false,
      stretch: model.stretch ?? false,
      stretchTriggerOffset: model.stretchTriggerOffset ?? 100.0,
      shape: model.shape?.parse(context),
      toolbarHeight: model.toolbarHeight ?? 64.0,
      leadingWidth: model.leadingWidth,
      toolbarTextStyle: model.toolbarTextStyle?.parse(context),
      titleTextStyle: model.titleTextStyle?.parse(context),
      systemOverlayStyle: model.systemOverlayStyle?.parse(context),
      forceMaterialTransparency: model.forceMaterialTransparency ?? false,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      actionsPadding: model.actionsPadding?.parse,
    );
  }
}
