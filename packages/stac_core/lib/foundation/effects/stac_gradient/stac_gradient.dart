import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/alignment/stac_alignment.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';

part 'stac_gradient.g.dart';

enum StacGradientType { linear, radial, sweep }

enum StacTileMode { clamp, repeated, mirror, decal }

@JsonSerializable()
class StacGradient {
  const StacGradient({
    this.gradientType,
    this.colors,
    this.stops,
    this.begin,
    this.end,
    this.center,
    this.focal,
    this.tileMode,
    this.focalRadius,
    this.radius,
    this.startAngle,
    this.endAngle,
  });

  final StacGradientType? gradientType;
  final List<StacColor>? colors;
  final List<double>? stops;
  final StacAlignment? begin;
  final StacAlignment? end;
  final StacAlignment? center;
  final StacAlignment? focal;
  final StacTileMode? tileMode;
  final double? focalRadius;
  final double? radius;
  final double? startAngle;
  final double? endAngle;

  factory StacGradient.fromJson(Map<String, dynamic> json) =>
      _$StacGradientFromJson(json);

  Map<String, dynamic> toJson() => _$StacGradientToJson(this);
}
