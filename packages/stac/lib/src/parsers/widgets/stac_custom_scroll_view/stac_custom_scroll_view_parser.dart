import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/custom_scroll_view/stac_custom_scroll_view.dart';
import 'package:stac_core/types/stac_axis.dart';
import 'package:stac_core/types/stac_drag_start_behavior.dart';
import 'package:stac_core/types/stac_scroll_view_keyboard_dismiss_behavior.dart';
import 'package:stac_core/types/stac_clip.dart';
import 'package:stac_core/types/stac_hit_test_behavior.dart';

class StacCustomScrollViewParser extends StacParser<StacCustomScrollView> {
  const StacCustomScrollViewParser();
  @override
  String get type => WidgetType.customScrollView.name;

  @override
  StacCustomScrollView getModel(Map<String, dynamic> json) =>
      StacCustomScrollView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCustomScrollView model) {
    return CustomScrollView(
      slivers: model.slivers
              ?.map((e) => e.parse(context) ?? const SizedBox())
              .toList() ??
          const [],
      scrollDirection: (model.scrollDirection ?? StacAxis.vertical).parse,
      reverse: model.reverse ?? false,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap ?? false,
      anchor: model.anchor ?? 0.0,
      cacheExtent: model.cacheExtent,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior:
          (model.dragStartBehavior ?? StacDragStartBehavior.start).parse,
      keyboardDismissBehavior: (model.keyboardDismissBehavior ??
              StacScrollViewKeyboardDismissBehavior.manual)
          .parse,
      restorationId: model.restorationId,
      clipBehavior: (model.clipBehavior ?? StacClip.hardEdge).parse,
      hitTestBehavior:
          (model.hitTestBehavior ?? StacHitTestBehavior.opaque).parse,
    );
  }
}
