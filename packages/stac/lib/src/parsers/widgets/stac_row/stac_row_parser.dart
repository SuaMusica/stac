import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_double.dart';

class StacRowParser extends StacParser<StacRow> {
  const StacRowParser();

  @override
  StacRow getModel(Map<String, dynamic> json) => StacRow.fromJson(json);

  @override
  String get type => StacRow.type;

  @override
  Widget parse(BuildContext context, StacRow model) {
    return Row(
        mainAxisAlignment:
            model.mainAxisAlignment?.parse ?? MainAxisAlignment.start,
        crossAxisAlignment:
            model.crossAxisAlignment?.parse ?? CrossAxisAlignment.center,
        mainAxisSize: model.mainAxisSize?.parse ?? MainAxisSize.max,
        textDirection: model.textDirection?.parse,
        verticalDirection:
            model.verticalDirection?.parse ?? VerticalDirection.down,
        spacing: model.spacing?.parse ?? 0,
        children: model.children.parseList(context) ?? []);
  }
}
