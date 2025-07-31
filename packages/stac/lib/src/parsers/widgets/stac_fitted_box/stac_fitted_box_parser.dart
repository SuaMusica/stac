import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/fitted_box/stac_fitted_box.dart';

class StacFittedBoxParser extends StacParser<StacFittedBox> {
  const StacFittedBoxParser();

  @override
  String get type => WidgetType.fittedBox.name;

  @override
  StacFittedBox getModel(Map<String, dynamic> json) =>
      StacFittedBox.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFittedBox model) {
    return FittedBox(
      fit: model.fit?.parse ?? BoxFit.contain,
      alignment: model.alignment?.parse ?? Alignment.center,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      child: model.child.parse(context),
    );
  }
}
