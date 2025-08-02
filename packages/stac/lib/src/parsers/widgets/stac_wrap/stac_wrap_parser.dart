import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_models/widgets/wrap/stac_wrap.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';

class StacWrapParser extends StacParser<StacWrap> {
  const StacWrapParser();

  @override
  String get type => WidgetType.wrap.name;

  @override
  StacWrap getModel(Map<String, dynamic> json) => StacWrap.fromJson(json);

  @override
  Widget parse(BuildContext context, StacWrap model) {
    return Wrap(
      direction: model.direction?.parse ?? Axis.horizontal,
      alignment: model.alignment?.parse ?? WrapAlignment.start,
      spacing: model.spacing ?? 0.0,
      runAlignment: model.runAlignment?.parse ?? WrapAlignment.start,
      runSpacing: model.runSpacing ?? 0.0,
      crossAxisAlignment: model.crossAxisAlignment?.parse ?? WrapCrossAlignment.start,
      textDirection: model.textDirection?.parse,
      verticalDirection: model.verticalDirection?.parse ?? VerticalDirection.down,
      clipBehavior: model.clipBehavior?.parse ?? Clip.none,
      children: model.children?.parseList(context) ?? const <Widget>[]
    );
  }
}
