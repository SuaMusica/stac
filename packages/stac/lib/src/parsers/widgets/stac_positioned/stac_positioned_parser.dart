import 'package:flutter/cupertino.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/widgets/positioned/stac_positioned.dart';

class StacPositionedParser extends StacParser<StacPositioned> {
  const StacPositionedParser();

  @override
  StacPositioned getModel(Map<String, dynamic> json) =>
      StacPositioned.fromJson(json);

  @override
  String get type => WidgetType.positioned.name;

  @override
  Widget parse(BuildContext context, StacPositioned model) {
    return Positioned(
        left: model.left?.parse,
        top: model.top?.parse,
        right: model.right?.parse,
        bottom: model.bottom?.parse,
        height: model.height?.parse,
        width: model.width?.parse,
        child: model.child.parse(context) ?? const SizedBox());
  }
}
