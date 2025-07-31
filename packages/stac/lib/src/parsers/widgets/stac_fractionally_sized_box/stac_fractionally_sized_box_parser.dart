import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/fractionally_sized_box/stac_fractionally_sized_box.dart';

class StacFractionallySizedBoxParser
    extends StacParser<StacFractionallySizedBox> {
  const StacFractionallySizedBoxParser();

  @override
  StacFractionallySizedBox getModel(Map<String, dynamic> json) =>
      StacFractionallySizedBox.fromJson(json);

  @override
  String get type => WidgetType.fractionallySizedBox.name;

  @override
  Widget parse(BuildContext context, StacFractionallySizedBox model) {
    return FractionallySizedBox(
      alignment: model.alignment?.parse ?? Alignment.center,
      widthFactor: model.widthFactor,
      heightFactor: model.heightFactor,
      child: model.child.parse(context),
    );
  }
}
