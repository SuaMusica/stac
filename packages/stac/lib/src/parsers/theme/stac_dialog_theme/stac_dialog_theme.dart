import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/parsers/widgets/stac_alignment_geometry/stac_alignment_geometry.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_dialog_theme.freezed.dart';
part 'stac_dialog_theme.g.dart';

@freezed
abstract class StacDialogTheme with _$StacDialogTheme {
  const factory StacDialogTheme({
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacBorder? shape,
    StacAlignmentGeometry? alignment,
    StacTextStyle? titleTextStyle,
    StacTextStyle? contentTextStyle,
    StacEdgeInsets? actionsPadding,
    String? iconColor,
  }) = _StacDialogTheme;

  factory StacDialogTheme.fromJson(Map<String, dynamic> json) =>
      _$StacDialogThemeFromJson(json);
}

extension StacDialogThemeParser on StacDialogTheme {
  DialogTheme? parse(BuildContext context) {
    return DialogTheme(
      backgroundColor: backgroundColor.toColor(context),
      elevation: elevation,
      shadowColor: shadowColor.toColor(context),
      surfaceTintColor: surfaceTintColor.toColor(context),
      shape: shape?.parse(context),
      alignment: alignment?.parse,
      titleTextStyle: titleTextStyle?.parse(context),
      contentTextStyle: contentTextStyle?.parse(context),
      actionsPadding: actionsPadding?.parse,
      iconColor: iconColor.toColor(context),
    );
  }
}
