import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/parsers/widgets/stac_radio_group/stac_radio_group_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/types/stac_radio_type.dart';
import 'package:stac_models/widgets/radio/stac_radio.dart';

class StacRadioParser extends StacParser<StacRadio> {
  const StacRadioParser();

  @override
  StacRadio getModel(Map<String, dynamic> json) => StacRadio.fromJson(json);

  @override
  String get type => WidgetType.radio.name;

  @override
  Widget parse(BuildContext context, StacRadio model) {
    return _RadioWidget(
      model: model,
      radioGroupScope: StacRadioGroupScope.of(context),
    );
  }
}

class _RadioWidget extends StatelessWidget {
  const _RadioWidget({
    required this.radioGroupScope,
    required this.model,
  });

  final StacRadioGroupScope? radioGroupScope;
  final StacRadio model;

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();

    switch (model.radioType ?? StacRadioType.material) {
      case StacRadioType.cupertino:
        return _buildCupertinoRadio(context, model, focusNode);
      case StacRadioType.adaptive:
        return _buildAdaptiveRadio(context, model, focusNode);
      case StacRadioType.material:
        return _buildMaterialRadio(context, model, focusNode);
    }
  }

  Widget _buildCupertinoRadio(
    BuildContext context,
    StacRadio model,
    FocusNode focusNode,
  ) {
    return ValueListenableBuilder(
      valueListenable: radioGroupScope!.radioGroupValue,
      builder: (context, value, child) {
        return CupertinoRadio(
          value: model.value,
          mouseCursor: model.mouseCursor?.parse,
          toggleable: model.toggleable ?? false,
          activeColor: model.activeColor?.toColor(context),
          inactiveColor: model.inactiveColor?.toColor(context),
          fillColor: model.fillColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          focusNode: focusNode,
          autofocus: model.autofocus ?? false,
          useCheckmarkStyle: model.useCheckmarkStyle ?? false,
        );
      },
    );
  }

  Widget _buildAdaptiveRadio(
    BuildContext context,
    StacRadio model,
    FocusNode focusNode,
  ) {
    return ValueListenableBuilder(
      valueListenable: radioGroupScope!.radioGroupValue,
      builder: (context, value, child) {
        return Radio.adaptive(
          value: model.value,
          mouseCursor: model.mouseCursor?.parse,
          toggleable: model.toggleable ?? false,
          activeColor: model.activeColor?.toColor(context),
          fillColor: WidgetStateProperty.all(model.fillColor?.toColor(context)),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          overlayColor: WidgetStateProperty.all(
            model.overlayColor?.toColor(context),
          ),
          splashRadius: model.splashRadius,
          materialTapTargetSize: model.materialTapTargetSize?.parse,
          visualDensity: model.visualDensity?.parse,
          focusNode: focusNode,
          autofocus: model.autofocus ?? false,
          useCupertinoCheckmarkStyle: model.useCupertinoCheckmarkStyle ?? false,
        );
      },
    );
  }

  Widget _buildMaterialRadio(
    BuildContext context,
    StacRadio model,
    FocusNode focusNode,
  ) {
    return ValueListenableBuilder(
      valueListenable: radioGroupScope!.radioGroupValue,
      builder: (context, value, child) {
        return Radio(
          value: model.value,
          mouseCursor: model.mouseCursor?.parse,
          toggleable: model.toggleable ?? false,
          activeColor: model.activeColor?.toColor(context),
          fillColor: WidgetStateProperty.all(model.fillColor?.toColor(context)),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          overlayColor: WidgetStateProperty.all(
            model.overlayColor?.toColor(context),
          ),
          splashRadius: model.splashRadius,
          materialTapTargetSize: model.materialTapTargetSize?.parse,
          visualDensity: model.visualDensity?.parse,
          focusNode: focusNode,
          autofocus: model.autofocus ?? false,
        );
      },
    );
  }
}
