import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

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

  @DoubleConverter()
  final double? left;

  @DoubleConverter()
  final double? top;

  @DoubleConverter()
  final double? right;

  @DoubleConverter()
  final double? bottom;

  @DoubleConverter()
  final double? width;

  @DoubleConverter()
  final double? height;

  final StacWidget? child;

  @override
  String get type => WidgetType.positioned.name;

  factory StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacPositionedToJson(this);
}
