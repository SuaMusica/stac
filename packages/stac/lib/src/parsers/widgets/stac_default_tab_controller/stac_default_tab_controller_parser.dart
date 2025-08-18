import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/default_tab_controller/stac_default_tab_controller.dart';

class StacDefaultTabControllerParser
    extends StacParser<StacDefaultTabController> {
  const StacDefaultTabControllerParser();

  @override
  String get type => WidgetType.defaultTabController.name;

  @override
  StacDefaultTabController getModel(Map<String, dynamic> json) =>
      StacDefaultTabController.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDefaultTabController model) {
    return DefaultTabController(
      length: model.length,
      initialIndex: model.initialIndex ?? 0,
      animationDuration: model.animationDuration?.parse,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
