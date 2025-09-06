import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/painting/stac_text_style_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_list_tile_theme_data.freezed.dart';
part 'stac_list_tile_theme_data.g.dart';

@freezed
abstract class StacListTileThemeData with _$StacListTileThemeData {
  const factory StacListTileThemeData({
    bool? dense,
    StacBorder? shape,
    ListTileStyle? style,
    String? selectedColor,
    String? iconColor,
    String? textColor,
    StacTextStyle? titleTextStyle,
    StacTextStyle? subtitleTextStyle,
    StacTextStyle? leadingAndTrailingTextStyle,
    StacEdgeInsets? contentPadding,
    String? tileColor,
    String? selectedTileColor,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
    bool? enableFeedback,
    StacVisualDensity? visualDensity,
    ListTileTitleAlignment? titleAlignment,
    List<StacShadow>? shadows,
  }) = _StacListTileThemeData;

  factory StacListTileThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacListTileThemeDataFromJson(json);
}

extension StacListTileThemeDataParser on StacListTileThemeData {
  ListTileThemeData parse(BuildContext context) {
    return ListTileThemeData(
      dense: dense,
      shape: shape?.parse(context),
      style: style,
      selectedColor: selectedColor.toColor(context),
      iconColor: iconColor.toColor(context),
      textColor: textColor.toColor(context),
      titleTextStyle: titleTextStyle?.parse(context),
      subtitleTextStyle: subtitleTextStyle?.parse(context),
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle?.parse(context),
      contentPadding: contentPadding?.parse,
      tileColor: tileColor.toColor(context),
      selectedTileColor: selectedTileColor.toColor(context),
      horizontalTitleGap: horizontalTitleGap,
      minVerticalPadding: minVerticalPadding,
      minLeadingWidth: minLeadingWidth,
      enableFeedback: enableFeedback,
      visualDensity: visualDensity?.parse,
      titleAlignment: titleAlignment,
    );
  }
}
