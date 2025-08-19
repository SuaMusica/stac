import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/painting/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_models/painting/stac_text_style/stac_text_style.dart';
import 'package:stac_models/types/stac_border_side/stac_border_side.dart';
import 'package:stac_models/types/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_models/types/stac_input_border/stac_input_border.dart';

part 'stac_input_decoration_theme.g.dart';

/// A Stac model mirroring Flutter's [InputDecorationTheme].
@JsonSerializable()
class StacInputDecorationTheme extends StacElement {
  const StacInputDecorationTheme({
    this.labelStyle,
    this.floatingLabelStyle,
    this.helperStyle,
    this.helperMaxLines,
    this.hintStyle,
    this.errorStyle,
    this.errorMaxLines,
    this.floatingLabelBehavior,
    this.floatingLabelAlignment,
    this.isDense,
    this.contentPadding,
    this.isCollapsed,
    this.iconColor,
    this.prefixStyle,
    this.prefixIconColor,
    this.suffixStyle,
    this.suffixIconColor,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.activeIndicatorBorder,
    this.outlineBorder,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
    this.alignLabelWithHint,
    this.constraints,
  });

  final StacTextStyle? labelStyle;
  final StacTextStyle? floatingLabelStyle;
  final StacTextStyle? helperStyle;
  final int? helperMaxLines;
  final StacTextStyle? hintStyle;
  final StacTextStyle? errorStyle;
  final int? errorMaxLines;
  final String? floatingLabelBehavior;
  final String? floatingLabelAlignment;
  final bool? isDense;
  final StacEdgeInsets? contentPadding;
  final bool? isCollapsed;
  final String? iconColor;
  final StacTextStyle? prefixStyle;
  final String? prefixIconColor;
  final StacTextStyle? suffixStyle;
  final String? suffixIconColor;
  final StacTextStyle? counterStyle;
  final bool? filled;
  final String? fillColor;
  final StacBorderSide? activeIndicatorBorder;
  final StacBorderSide? outlineBorder;
  final String? focusColor;
  final String? hoverColor;
  final StacInputBorder? errorBorder;
  final StacInputBorder? focusedBorder;
  final StacInputBorder? focusedErrorBorder;
  final StacInputBorder? disabledBorder;
  final StacInputBorder? enabledBorder;
  final StacInputBorder? border;
  final bool? alignLabelWithHint;
  final StacBoxConstraints? constraints;

  factory StacInputDecorationTheme.fromJson(Map<String, dynamic> json) =>
      _$StacInputDecorationThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacInputDecorationThemeToJson(this);
}
