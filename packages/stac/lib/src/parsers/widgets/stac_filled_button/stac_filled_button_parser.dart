import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/filled_button/stac_filled_button.dart';

class StacFilledButtonParser extends StacParser<StacFilledButton> {
  const StacFilledButtonParser();

  @override
  String get type => WidgetType.filledButton.name;

  @override
  StacFilledButton getModel(Map<String, dynamic> json) =>
      StacFilledButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFilledButton model) {
    return FilledButton(
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      onHover: model.onHover == null
          ? null
          : (bool value) => Stac.onCallFromJson(model.onHover, context),
      onFocusChange: model.onFocusChange == null
          ? null
          : (bool value) => Stac.onCallFromJson(model.onFocusChange, context),
      style: model.style?.parseFilledButton(context),
      autofocus: model.autofocus,
      clipBehavior: model.clipBehavior.parse,
      child: model.child?.parse(context),
    );
  }
}
