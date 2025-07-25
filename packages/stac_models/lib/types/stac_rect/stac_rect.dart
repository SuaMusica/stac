import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/types/stac_offset/stac_offset.dart';

part 'stac_rect.g.dart';

enum StacRectType { fromCenter, fromCircle, fromLTRB, fromLTWH, fromPoints }

@JsonSerializable()
class StacRect implements StacElement {
  StacRect({
    required this.rectType,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    this.center,
    this.radius,
    this.a,
    this.b,
  });

  final StacRectType rectType;
  final StacDouble? left;
  final StacDouble? top;
  final StacDouble? right;
  final StacDouble? bottom;
  final StacDouble? width;
  final StacDouble? height;
  final StacOffset? center;
  final StacDouble? radius;
  final StacOffset? a;
  final StacOffset? b;

  factory StacRect.fromJson(Map<String, dynamic> json) =>
      _$StacRectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacRectToJson(this);
}
