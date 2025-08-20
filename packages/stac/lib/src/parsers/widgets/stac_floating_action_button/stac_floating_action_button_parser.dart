import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_core/types/stac_floating_action_button_type.dart';
import 'package:stac_core/widgets/floating_action_button/stac_floating_action_button.dart';

class StacFloatingActionButtonParser
    extends StacParser<StacFloatingActionButton> {
  const StacFloatingActionButtonParser();

  @override
  String get type => WidgetType.floatingActionButton.name;

  @override
  StacFloatingActionButton getModel(Map<String, dynamic> json) =>
      StacFloatingActionButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFloatingActionButton model) {
    switch (model.buttonType) {
      case StacFloatingActionButtonType.extended:
        return FloatingActionButton.extended(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          icon: model.icon?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          extendedTextStyle: model.extendedTextStyle?.parse(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          extendedIconLabelSpacing: model.extendedIconLabelSpacing,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          label: model.child?.parse(context) ?? const SizedBox(),
        );

      case StacFloatingActionButtonType.large:
        return FloatingActionButton.large(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: model.child?.parse(context),
        );

      case StacFloatingActionButtonType.medium:
        return FloatingActionButton(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: model.child?.parse(context),
        );

      case StacFloatingActionButtonType.small:
        return FloatingActionButton.small(
          onPressed: model.onPressed == null
              ? null
              : () => model.onPressed?.parse(context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation,
          focusElevation: model.focusElevation,
          hoverElevation: model.hoverElevation,
          disabledElevation: model.disabledElevation,
          highlightElevation: model.highlightElevation,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus ?? false,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: model.child?.parse(context),
        );
    }
  }
}
