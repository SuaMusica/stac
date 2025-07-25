import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_models/stac_models.dart';

extension StacSystemUIOverlayStyleParser on StacSystemUIOverlayStyle {
  SystemUiOverlayStyle parse(BuildContext context) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: systemNavigationBarColor?.toColor(context),
      systemNavigationBarDividerColor:
          systemNavigationBarDividerColor.toColor(context),
      systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
      systemNavigationBarContrastEnforced: systemNavigationBarContrastEnforced,
      statusBarColor: statusBarColor.toColor(context),
      statusBarBrightness: statusBarBrightness,
      statusBarIconBrightness: statusBarIconBrightness,
      systemStatusBarContrastEnforced: systemStatusBarContrastEnforced,
    );
  }
}
