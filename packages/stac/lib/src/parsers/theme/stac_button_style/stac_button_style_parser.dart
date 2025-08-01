import 'package:flutter/material.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_models/theme/stac_button_style/stac_button_style.dart';

extension StacButtonStyleParser on StacButtonStyle {
  ButtonStyle parseElevatedButton(BuildContext context) {
    return ElevatedButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment?.parse,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      enabledMouseCursor: enabledMouseCursor?.parse,
      disabledMouseCursor: disabledMouseCursor?.parse,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize?.parse,
      animationDuration: animationDuration?.parse,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseTextButton(BuildContext context) {
    return TextButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment?.parse,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      enabledMouseCursor: enabledMouseCursor?.parse,
      disabledMouseCursor: disabledMouseCursor?.parse,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize?.parse,
      animationDuration: animationDuration?.parse,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseOutlinedButton(BuildContext context) {
    return OutlinedButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment?.parse,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      enabledMouseCursor: enabledMouseCursor?.parse,
      disabledMouseCursor: disabledMouseCursor?.parse,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize?.parse,
      animationDuration: animationDuration?.parse,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseIconButton(BuildContext context) {
    return IconButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor?.toColor(context),
      disabledForegroundColor: disabledForegroundColor?.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor?.toColor(context),
      shadowColor: shadowColor?.toColor(context),
      surfaceTintColor: surfaceTintColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      iconSize: iconSize,
      side: side?.parse(context),
      // shape: shape?.parse(context),
      padding: padding?.parse,
      enabledMouseCursor: enabledMouseCursor?.parse,
      disabledMouseCursor: disabledMouseCursor?.parse,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize?.parse,
      animationDuration: animationDuration?.parse,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseFilledButton(BuildContext context) {
    return FilledButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      iconColor: iconColor?.toColor(context),
      iconSize: iconSize,
      iconAlignment: iconAlignment?.parse,
      disabledIconColor: disabledIconColor?.toColor(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      enabledMouseCursor: enabledMouseCursor?.parse,
      disabledMouseCursor: disabledMouseCursor?.parse,
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize?.parse,
      animationDuration: animationDuration?.parse,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }

  ButtonStyle parseMenuItemButton(BuildContext context) {
    return MenuItemButton.styleFrom(
      foregroundColor: foregroundColor?.toColor(context),
      backgroundColor: backgroundColor.toColor(context),
      disabledForegroundColor: disabledForegroundColor.toColor(context),
      disabledBackgroundColor: disabledBackgroundColor.toColor(context),
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      iconColor: iconColor.toColor(context),
      iconSize: iconSize,
      disabledIconColor: disabledIconColor.toColor(context),
      textStyle: textStyle?.parse(context),
      overlayColor: overlayColor?.toColor(context),
      elevation: elevation,
      padding: padding?.parse,
      minimumSize: minimumSize?.parse,
      fixedSize: fixedSize?.parse,
      maximumSize: maximumSize?.parse,
      enabledMouseCursor: enabledMouseCursor?.parse,
      disabledMouseCursor: disabledMouseCursor?.parse,
      side: side?.parse(context),
      shape: shape?.parse(context),
      visualDensity: visualDensity?.parse,
      tapTargetSize: tapTargetSize?.parse,
      animationDuration: animationDuration?.parse,
      enableFeedback: enableFeedback,
      alignment: alignment?.parse,
    );
  }
}
