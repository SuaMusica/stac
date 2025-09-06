import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/geometry/stac_offset/stac_offset.dart';

part 'stac_shadow.g.dart';

@JsonSerializable()
class StacShadow implements StacElement {
  const StacShadow({this.color, this.offset, this.blurRadius});

  /// Color as hex or theme color name
  final String? color;

  /// Offset for the shadow
  final StacOffset? offset;

  /// Blur radius for the shadow
  @DoubleConverter()
  final double? blurRadius;

  factory StacShadow.fromJson(Map<String, dynamic> json) =>
      _$StacShadowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacShadowToJson(this);
}
