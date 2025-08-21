import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_snack_bar_action.g.dart';

@JsonSerializable()
class StacSnackBarAction {
  const StacSnackBarAction({
    this.textColor,
    this.disabledTextColor,
    this.backgroundColor,
    this.disabledBackgroundColor,
    required this.label,
    required this.onPressed,
  });

  final String? textColor;
  final String? disabledTextColor;
  final String? backgroundColor;
  final String? disabledBackgroundColor;
  final String label;
  final StacAction? onPressed;

  factory StacSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarActionFromJson(json);

  Map<String, dynamic> toJson() => _$StacSnackBarActionToJson(this);
}
