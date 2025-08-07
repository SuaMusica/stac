import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/single_child_scroll_view/stac_single_child_scroll_view.dart';

class StacSingleChildScrollViewParser
    extends StacParser<StacSingleChildScrollView> {
  const StacSingleChildScrollViewParser();

  @override
  StacSingleChildScrollView getModel(Map<String, dynamic> json) =>
      StacSingleChildScrollView.fromJson(json);

  @override
  String get type => WidgetType.singleChildScrollView.name;

  @override
  Widget parse(BuildContext context, StacSingleChildScrollView model) {
    return SingleChildScrollView(
      scrollDirection: model.scrollDirection?.parse ?? Axis.vertical,
      reverse: model.reverse ?? false,
      padding: model.padding?.parse,
      primary: model.primary,
      physics: model.physics?.parse,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      restorationId: model.restorationId,
      keyboardDismissBehavior: model.keyboardDismissBehavior?.parse ??
          ScrollViewKeyboardDismissBehavior.manual,
      child: model.child?.parse(context),
    );
  }
}
