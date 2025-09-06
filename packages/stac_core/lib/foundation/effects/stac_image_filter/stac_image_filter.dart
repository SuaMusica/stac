import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';

part 'stac_image_filter.g.dart';

/// Enum of supported image filter constructors (shader not supported).
enum StacImageFilterType { blur, matrix, dilate, erode, compose }

/// A Stac model representing Flutter's ImageFilter.
///
/// Provides named constructors for a familiar API. JSON uses a flat shape with
/// a required `type` field and associated properties.
///
/// Dart Example:
/// ```dart
/// StacImageFilter.blur(sigmaX: 10, sigmaY: 12)
/// ```
///
/// JSON Example:
/// ```json
/// { "type": "blur", "sigmaX": 10, "sigmaY": 12 }
/// ```
@JsonSerializable(explicitToJson: true)
class StacImageFilter {
  const StacImageFilter({
    required this.type,
    this.sigmaX,
    this.sigmaY,
    this.radiusX,
    this.radiusY,
    this.matrix,
    this.inner,
    this.outer,
  });

  /// Creates a blur filter.
  ///
  /// - [sigmaX]: Standard deviation in the horizontal direction.
  /// - [sigmaY]: Standard deviation in the vertical direction. Defaults to [sigmaX] when omitted.
  const StacImageFilter.blur({required double sigmaX, double? sigmaY})
    : this(type: StacImageFilterType.blur, sigmaX: sigmaX, sigmaY: sigmaY);

  /// Creates a matrix filter.
  ///
  /// - [matrix]: A 4x4 transformation matrix (length 16).
  const StacImageFilter.matrix({required List<double> matrix})
    : this(type: StacImageFilterType.matrix, matrix: matrix);

  /// Creates a dilate filter.
  ///
  /// - [radiusX]: Horizontal radius.
  /// - [radiusY]: Vertical radius. Defaults to [radiusX] when omitted.
  const StacImageFilter.dilate({required double radiusX, double? radiusY})
    : this(
        type: StacImageFilterType.dilate,
        radiusX: radiusX,
        radiusY: radiusY,
      );

  /// Creates an erode filter.
  ///
  /// - [radiusX]: Horizontal radius.
  /// - [radiusY]: Vertical radius. Defaults to [radiusX] when omitted.
  const StacImageFilter.erode({required double radiusX, double? radiusY})
    : this(type: StacImageFilterType.erode, radiusX: radiusX, radiusY: radiusY);

  /// Composes two filters where [inner] is applied first, then [outer].
  const StacImageFilter.compose({
    required StacImageFilter inner,
    required StacImageFilter outer,
  }) : this(type: StacImageFilterType.compose, inner: inner, outer: outer);

  final StacImageFilterType type;

  @DoubleConverter()
  final double? sigmaX;
  @DoubleConverter()
  final double? sigmaY;
  @DoubleConverter()
  final double? radiusX;
  @DoubleConverter()
  final double? radiusY;
  final List<double>? matrix;
  final StacImageFilter? inner;
  final StacImageFilter? outer;

  factory StacImageFilter.fromJson(Map<String, dynamic> json) =>
      _$StacImageFilterFromJson(json);
  Map<String, dynamic> toJson() => _$StacImageFilterToJson(this);
}
