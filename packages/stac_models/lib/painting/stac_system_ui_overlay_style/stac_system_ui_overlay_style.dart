import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/types/stac_brightness.dart';

part 'stac_system_ui_overlay_style.g.dart';

@JsonSerializable()
class StacSystemUIOverlayStyle extends StacElement {
  StacSystemUIOverlayStyle({
    this.systemNavigationBarColor,
    this.systemNavigationBarDividerColor,
    this.systemNavigationBarIconBrightness,
    this.systemNavigationBarContrastEnforced,
    this.statusBarColor,
    this.statusBarBrightness,
    this.statusBarIconBrightness,
    this.systemStatusBarContrastEnforced,
  });

  final String? systemNavigationBarColor;
  final String? systemNavigationBarDividerColor;
  final StacBrightness? systemNavigationBarIconBrightness;
  final bool? systemNavigationBarContrastEnforced;
  final String? statusBarColor;
  final StacBrightness? statusBarBrightness;
  final StacBrightness? statusBarIconBrightness;
  final bool? systemStatusBarContrastEnforced;

  factory StacSystemUIOverlayStyle.fromJson(Map<String, dynamic> json) =>
      _$StacSystemUIOverlayStyleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSystemUIOverlayStyleToJson(this);
}
