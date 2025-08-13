import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_models/types/stac_blend_mode.dart';
import 'package:stac_models/widgets/backdrop_filter/stac_backdrop_filter.dart';
import 'package:stac_framework/stac_framework.dart';

class StacBackdropFilterParser extends StacParser<StacBackdropFilter> {
  const StacBackdropFilterParser();

  @override
  String get type => WidgetType.backdropFilter.name;

  @override
  StacBackdropFilter getModel(Map<String, dynamic> json) =>
      StacBackdropFilter.fromJson(json);

  @override
  Widget parse(BuildContext context, StacBackdropFilter model) {
    return BackdropFilter(
      filter: model.filter.parse,
      blendMode: (model.blendMode ?? StacBlendMode.srcOver).parse,
      enabled: model.enabled ?? true,
      child: model.child?.parse(context) ?? const SizedBox(),
    );
  }
}
