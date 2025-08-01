import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/icon_button/stac_icon_button.dart';

class StacIconButtonParser extends StacParser<StacIconButton> {
  const StacIconButtonParser();

  @override
  String get type => WidgetType.iconButton.name;

  @override
  StacIconButton getModel(Map<String, dynamic> json) =>
      StacIconButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacIconButton model) {
    return IconButton(
      iconSize: model.iconSize,
      padding: model.padding?.parse,
      alignment: model.alignment?.parse,
      splashRadius: model.splashRadius,
      color: model.color?.toColor(context),
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      highlightColor: model.highlightColor?.toColor(context),
      splashColor: model.splashColor?.toColor(context),
      disabledColor: model.disabledColor?.toColor(context),
      onPressed: model.onPressed == null
          ? null
          : () => Stac.onCallFromJson(model.onPressed, context),
      onHover: model.onHover == null
          ? null
          : (bool value) => Stac.onCallFromJson(model.onHover, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      mouseCursor: model.mouseCursor?.parse,
      autofocus: model.autofocus ?? false,
      tooltip: model.tooltip,
      enableFeedback: model.enableFeedback,
      constraints: model.constraints?.parse,
      style: model.style?.parseIconButton(context),
      isSelected: model.isSelected,
      selectedIcon: model.selectedIcon?.parse(context),
      icon: model.icon?.parse(context) ?? const SizedBox(),
    );
  }
}
