import 'package:flutter/material.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_core/widgets/card/stac_card.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCardParser extends StacParser<StacCard> {
  const StacCardParser();

  @override
  String get type => WidgetType.card.name;

  @override
  StacCard getModel(Map<String, dynamic> json) => StacCard.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCard model) {
    return Card(
      color: model.color?.toColor(context),
      shadowColor: model.shadowColor?.toColor(context),
      surfaceTintColor: model.surfaceTintColor?.toColor(context),
      elevation: model.elevation,
      shape: model.shape?.parse(context),
      borderOnForeground: model.borderOnForeground ?? true,
      clipBehavior: model.clipBehavior?.parse,
      semanticContainer: model.semanticContainer ?? true,
      margin: model.margin?.parse,
      child: model.child?.parse(context),
    );
  }
}
