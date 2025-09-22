// import 'dart:math' as math;

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:stac/src/parsers/parsers.dart';
// import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
// import 'package:stac/src/utils/color_utils.dart';

// part 'stac_gradient.freezed.dart';
// part 'stac_gradient.g.dart';

// enum StacGradientType { linear, radial, sweep }

// @freezed
// abstract class StacGradient with _$StacGradient {
//   const factory StacGradient({
//     required List<String> colors,
//     List<StacDouble>? stops,
//     @Default(StacAlignment.centerLeft) StacAlignment begin,
//     @Default(StacAlignment.centerRight) StacAlignment end,
//     @Default(StacAlignment.center) StacAlignment center,
//     @Default(StacGradientType.linear) StacGradientType gradientType,
//     StacAlignmentGeometry? focal,
//     @Default(TileMode.clamp) TileMode tileMode,
//     @Default(StacDouble.zero) StacDouble focalRadius,
//     @Default(StacDouble(0.5)) StacDouble radius,
//     @Default(StacDouble.zero) StacDouble startAngle,
//     @Default(StacDouble(math.pi * 2)) StacDouble endAngle,
//   }) = _StacGradient;

//   factory StacGradient.fromJson(Map<String, dynamic> json) =>
//       _$StacGradientFromJson(json);
// }
