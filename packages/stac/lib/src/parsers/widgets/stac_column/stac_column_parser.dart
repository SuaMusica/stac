import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_double.dart';

class StacColumnParser extends StacParser<StacColumn> {
  const StacColumnParser();

  @override
  StacColumn getModel(Map<String, dynamic> json) => StacColumn.fromJson(json);

  @override
  String get type => StacColumn.type;

  @override
  Widget parse(BuildContext context, StacColumn model) {
    return Column(
      mainAxisAlignment:
          model.mainAxisAlignment?.parse ?? MainAxisAlignment.start,
      crossAxisAlignment:
          model.crossAxisAlignment?.parse ?? CrossAxisAlignment.center,
      mainAxisSize: model.mainAxisSize?.parse ?? MainAxisSize.max,
      textDirection: model.textDirection?.parse,
      verticalDirection:
          model.verticalDirection?.parse ?? VerticalDirection.down,
      spacing: model.spacing?.parse ?? 0.0,
      children: model.children.parseList(context) ?? [],
    );
  }
}
