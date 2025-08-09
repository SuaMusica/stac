import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/actions/form_validate/stac_form_validate.dart';

class StacFormValidateParser extends StacActionParser<StacFormValidate> {
  const StacFormValidateParser();

  @override
  String get actionType => ActionType.validateForm.name;

  @override
  StacFormValidate getModel(Map<String, dynamic> json) =>
      StacFormValidate.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacFormValidate model) {
    final isValid =
        StacFormScope.of(context)?.formKey.currentState?.validate() ?? false;

    if (isValid) {
      return model.isValid?.parse(context);
    } else {
      return model.isNotValid?.parse(context);
    }
  }
}
