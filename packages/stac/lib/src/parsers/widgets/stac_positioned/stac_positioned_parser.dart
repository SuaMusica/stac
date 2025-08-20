import 'package:flutter/cupertino.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/widgets/positioned/stac_positioned.dart';

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
        left: model.left,
        top: model.top,
        right: model.right,
        bottom: model.bottom,
        height: model.height,
        width: model.width,
        child: model.child.parse(context) ?? const SizedBox());
  }
}
