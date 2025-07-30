import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/stack/stac_stack.dart';

class StacStackParser extends StacParser<StacStack> {
  const StacStackParser();

  @override
  StacStack getModel(Map<String, dynamic> json) => StacStack.fromJson(json);

  @override
  String get type => WidgetType.stack.name;

  @override
  Widget parse(BuildContext context, StacStack model) {
    return Stack(
      alignment: model.alignment?.parse ?? AlignmentDirectional.topStart,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      fit: model.fit?.parse ?? StackFit.loose,
      textDirection: model.textDirection?.parse,
      children: model.children?.parseList(context) ?? [],
    );
  }
}
