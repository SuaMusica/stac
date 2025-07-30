import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/types/stac_double.dart';

part 'stac_positioned.g.dart';

@JsonSerializable()
class StacPositioned extends StacWidget {
  const StacPositioned({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    required this.child,
  });

  final StacDouble? left;

  final StacDouble? top;

  final StacDouble? right;

  final StacDouble? bottom;

  final StacDouble? width;

  final StacDouble? height;

  @StacWidgetJsonConverter()
  final StacWidget? child;

  @override
  String get type => 'positioned';

  factory StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$StacPositionedToJson(this);
    json['type'] = type;
    return json;
  }
}
