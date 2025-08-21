import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac_core/actions/snack_bar/stac_snack_bar.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_framework/stac_framework.dart';

// Types are parsed via extensions in type_parser.dart

class StacSnackBarParser extends StacActionParser<StacSnackBar> {
  const StacSnackBarParser();

  @override
  String get actionType => ActionType.showSnackBar.name;

  @override
  StacSnackBar getModel(Map<String, dynamic> json) =>
      StacSnackBar.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacSnackBar model) async {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.hideCurrentSnackBar();

    scaffoldMessenger.showSnackBar(
      SnackBar(
        content: Stac.fromJson(model.content, context) ?? SizedBox.shrink(),
        backgroundColor: model.backgroundColor?.toColor(context),
        elevation: model.elevation,
        margin: model.margin?.parse,
        padding: model.padding?.parse,
        width: model.width,
        shape: model.shape?.parse(context),
        hitTestBehavior: model.hitTestBehavior?.parse,
        behavior: model.behavior?.parse,
        action: model.action?.parse(context),
        actionOverflowThreshold: model.actionOverflowThreshold,
        showCloseIcon: model.showCloseIcon,
        closeIconColor: model.closeIconColor?.toColor(context),
        duration: model.duration?.parse ?? const Duration(milliseconds: 4000),
        onVisible: () => Stac.onCallFromJson(model.onVisible, context),
        dismissDirection: model.dismissDirection?.parse,
        clipBehavior: model.clipBehavior.parse,
      ),
    );
  }
}
