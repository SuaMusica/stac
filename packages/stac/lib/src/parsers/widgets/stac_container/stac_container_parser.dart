import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_box_decoration_parser.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_double.dart';

class StacContainerParser extends StacParser<StacContainer> {
  const StacContainerParser();

  @override
  String get type => WidgetType.container.name;

  @override
  StacContainer getModel(Map<String, dynamic> json) =>
      StacContainer.fromJson(json);

  @override
  Widget parse(BuildContext context, StacContainer model) {
    return Container(
      alignment: model.alignment?.parse,
      padding: model.padding?.parse,
      color: model.color.toColor(context),
      decoration: model.decoration?.parse(context),
      foregroundDecoration: model.foregroundDecoration?.parse(context),
      width: model.width?.parse,
      height: model.height?.parse,
      constraints: model.constraints?.parse,
      margin: model.margin?.parse,
      transformAlignment: model.transformAlignment?.parse,
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      child: model.child?.parse(context),
    );
  }
}
