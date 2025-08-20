import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac_core/types/stac_border_radius/stac_border_radius.dart';

export 'stac_linear_progress_indicator_parser.dart';

part 'stac_linear_progress_indicator.freezed.dart';
part 'stac_linear_progress_indicator.g.dart';

@freezed
abstract class StacLinearProgressIndicator with _$StacLinearProgressIndicator {
  const factory StacLinearProgressIndicator({
    StacDouble? value,
    String? backgroundColor,
    String? color,
    StacDouble? minHeight,
    String? semanticsLabel,
    String? semanticsValue,
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
  }) = _StacLinearProgressIndicator;

  factory StacLinearProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacLinearProgressIndicatorFromJson(json);
}
