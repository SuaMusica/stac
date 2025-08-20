import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/expanded/stac_expanded.dart';

class StacExpandedParser extends StacParser<StacExpanded> {
  const StacExpandedParser();

  @override
  String get type => WidgetType.expanded.name;

  @override
  StacExpanded getModel(Map<String, dynamic> json) =>
      StacExpanded.fromJson(json);

  @override
  Widget parse(BuildContext context, StacExpanded model) {
    return Expanded(
      flex: model.flex ?? 1,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
