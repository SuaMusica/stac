import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/foundation/decoration/stac_box_decoration_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_tab_bar_theme_data.freezed.dart';
part 'stac_tab_bar_theme_data.g.dart';

@freezed
abstract class StacTabBarThemeData with _$StacTabBarThemeData {
  const factory StacTabBarThemeData({
    StacBoxDecoration? indicator,
    String? indicatorColor,
    TabBarIndicatorSize? indicatorSize,
    String? dividerColor,
    String? labelColor,
    StacEdgeInsets? labelPadding,
    StacTextStyle? labelStyle,
    String? unselectedLabelColor,
    StacTextStyle? unselectedLabelStyle,
    String? overlayColor,
  }) = _StacTabBarThemeData;

  factory StacTabBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTabBarThemeDataFromJson(json);
}

extension StacTabBarThemeDataParser on StacTabBarThemeData {
  TabBarTheme? parse(BuildContext context) {
    return TabBarTheme(
      indicator: indicator?.parse(context),
      indicatorColor: indicatorColor.toColor(context),
      indicatorSize: indicatorSize,
      dividerColor: dividerColor.toColor(context),
      labelColor: labelColor.toColor(context),
      labelPadding: labelPadding?.parse,
      labelStyle: labelStyle?.parse(context),
      unselectedLabelColor: unselectedLabelColor.toColor(context),
      unselectedLabelStyle: unselectedLabelStyle?.parse(context),
      overlayColor: WidgetStateProperty.all(overlayColor.toColor(context)),
    );
  }
}
