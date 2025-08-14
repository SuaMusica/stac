import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_models/widgets/clip_rrect/stac_clip_rrect.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacClipRRectParser extends StacParser<StacClipRRect> {
  const StacClipRRectParser();

  @override
  String get type => WidgetType.clipRRect.name;

  @override
  StacClipRRect getModel(Map<String, dynamic> json) =>
      StacClipRRect.fromJson(json);

  @override
  Widget parse(BuildContext context, StacClipRRect model) {
    return ClipRRect(
      borderRadius: model.borderRadius?.parse ?? BorderRadius.zero,
      clipBehavior: model.clipBehavior?.parse ?? Clip.antiAlias,
      child: model.child?.parse(context),
    );
  }
}
