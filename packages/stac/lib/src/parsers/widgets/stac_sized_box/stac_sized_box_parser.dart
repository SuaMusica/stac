import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/stac_models.dart';
import 'package:stac_models/types/stac_double.dart';

class StacSizedBoxParser extends StacParser<StacSizedBox> {
  const StacSizedBoxParser();

  @override
  StacSizedBox getModel(Map<String, dynamic> json) =>
      StacSizedBox.fromJson(json);

  @override
  String get type => WidgetType.sizedBox.name;

  @override
  Widget parse(BuildContext context, StacSizedBox model) {
    return SizedBox(
      width: model.width?.parse,
      height: model.height?.parse,
      child: model.child.parse(context),
    );
  }
}
