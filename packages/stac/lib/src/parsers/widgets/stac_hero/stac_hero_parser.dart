import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac_core/widgets/hero/stac_hero.dart';
import 'package:stac_framework/stac_framework.dart';

class StacHeroParser extends StacParser<StacHero> {
  const StacHeroParser();

  @override
  String get type => WidgetType.hero.name;

  @override
  StacHero getModel(Map<String, dynamic> json) => StacHero.fromJson(json);

  @override
  Widget parse(BuildContext context, StacHero model) {
    return Hero(
      tag: model.tag,
      createRectTween: model.createRectTween != null
          ? (_, __) => model.createRectTween!.parse(context)
          : null,
      flightShuttleBuilder: model.flightShuttleBuilder != null
          ? (flightContext, animation, flightDirection, fromHeroContext,
              toHeroContext) {
              final widget = model.flightShuttleBuilder!.parse(flightContext);
              return widget ?? const SizedBox();
            }
          : null,
      placeholderBuilder: model.placeholderBuilder != null
          ? (context, heroSize, child) {
              final widget = model.placeholderBuilder!.parse(context);
              return widget ?? const SizedBox();
            }
          : null,
      transitionOnUserGestures: model.transitionOnUserGestures ?? false,
      child: model.child.parse(context) ?? const SizedBox(),
    );
  }
}
