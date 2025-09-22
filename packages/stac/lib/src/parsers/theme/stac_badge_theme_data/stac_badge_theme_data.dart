import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_geometry_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_offset_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_badge_theme_data.freezed.dart';
part 'stac_badge_theme_data.g.dart';

@freezed
abstract class StacBadgeThemeData with _$StacBadgeThemeData {
  const factory StacBadgeThemeData({
    String? backgroundColor,
    String? textColor,
    double? smallSize,
    double? largeSize,
    StacTextStyle? textStyle,
    StacEdgeInsets? padding,
    StacAlignmentGeometry? alignment,
    StacOffset? offset,
  }) = _StacBadgeThemeData;

  factory StacBadgeThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBadgeThemeDataFromJson(json);
}

extension StacBadgeThemeDataParser on StacBadgeThemeData {
  BadgeThemeData parse(BuildContext context) {
    return BadgeThemeData(
      backgroundColor: backgroundColor?.toColor(context),
      textColor: textColor?.toColor(context),
      smallSize: smallSize,
      largeSize: largeSize,
      textStyle: textStyle?.parse(context),
      padding: padding?.parse,
      alignment: alignment?.parse,
      offset: offset?.parse,
    );
  }
}
