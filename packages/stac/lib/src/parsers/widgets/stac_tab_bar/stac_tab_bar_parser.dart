import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_box_decoration_parser.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/tab_bar/stac_tab_bar.dart';
import 'package:stac_models/types/types.dart';

class StacTabBarParser extends StacParser<StacTabBar> {
  const StacTabBarParser({this.controller});

  final TabController? controller;

  @override
  StacTabBar getModel(Map<String, dynamic> json) => StacTabBar.fromJson(json);

  @override
  String get type => WidgetType.tabBar.name;

  @override
  Widget parse(BuildContext context, StacTabBar model) {
    return TabBar(
      controller: controller,
      tabs:
          model.tabs.map((t) => t.parse(context) ?? const SizedBox()).toList(),
      isScrollable: model.isScrollable ?? false,
      padding: model.padding?.parse,
      indicatorColor: model.indicatorColor?.toColor(context),
      automaticIndicatorColorAdjustment:
          model.automaticIndicatorColorAdjustment ?? true,
      indicatorWeight: model.indicatorWeight ?? 2.0,
      indicatorPadding: model.indicatorPadding?.parse ?? EdgeInsets.zero,
      indicator: model.indicator?.parse(context),
      indicatorSize: () {
        switch (model.indicatorSize) {
          case StacTabBarIndicatorSize.label:
            return TabBarIndicatorSize.label;
          case StacTabBarIndicatorSize.tab:
          default:
            return TabBarIndicatorSize.tab;
        }
      }(),
      labelColor: model.labelColor?.toColor(context),
      labelStyle: model.labelStyle?.parse(context),
      labelPadding: model.labelPadding?.parse,
      unselectedLabelColor: model.unselectedLabelColor?.toColor(context),
      unselectedLabelStyle: model.unselectedLabelStyle?.parse(context),
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      enableFeedback: model.enableFeedback,
      onTap: (_) {},
      physics: model.physics?.parse,
      tabAlignment: () {
        switch (model.tabAlignment) {
          case StacTabAlignment.center:
            return TabAlignment.center;
          case StacTabAlignment.fill:
            return TabAlignment.fill;
          case StacTabAlignment.startOffset:
            return TabAlignment.startOffset;
          case StacTabAlignment.start:
          default:
            return TabAlignment.start;
        }
      }(),
      dividerColor: model.dividerColor?.toColor(context),
      dividerHeight: model.dividerHeight,
    );
  }
}
