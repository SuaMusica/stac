import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTextParser extends StacParser<StacText> {
  const StacTextParser();

  @override
  String get type => WidgetType.text.name;

  @override
  StacText getModel(Map<String, dynamic> json) => StacText.fromJson(json);

  @override
  Widget parse(BuildContext context, StacText model) {
    return Text.rich(
      _buildTextSpan(context, model),
      style: model.style?.parse(context),
      textAlign: model.textAlign?.parse,
      textDirection: model.textDirection?.parse,
      softWrap: model.softWrap,
      overflow: model.overflow?.parse,
      textScaler: model.textScaleFactor != null
          ? TextScaler.linear(model.textScaleFactor!)
          : TextScaler.noScaling,
      maxLines: model.maxLines,
      semanticsLabel: model.semanticsLabel,
      textWidthBasis: model.textWidthBasis?.parse,
      selectionColor: model.selectionColor?.toColor(context),
    );
  }

  TextSpan _buildTextSpan(BuildContext context, StacText model) {
    return TextSpan(
      text: model.data,
      children: model.children.map((child) {
        return TextSpan(
          text: child.text,
          style: model.style?.parse(context),
          recognizer: child.onTap != null
              ? (TapGestureRecognizer()
                ..onTap = () => Stac.onCallFromJson(child.onTap, context))
              : null,
        );
      }).toList(),
    );
  }
}
