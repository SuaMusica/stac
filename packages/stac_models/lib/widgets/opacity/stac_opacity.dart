import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/widgets/widgets.dart'; // For StacWidget

part 'stac_opacity.g.dart'; // This name is derived from the Dart file name 'stac_opacity.dart'

@JsonSerializable()
class StacOpacity extends StacWidget {
  const StacOpacity({
    required this.opacity,
    this.alwaysIncludeSemantics,
    this.child,
  });

  @DoubleConverter()
  final double opacity;

  final bool? alwaysIncludeSemantics;

  @StacWidgetConverter()
  final StacWidget? child;

  @override
  String get type => 'opacity'; // Consistent with 'opacity' directory

  factory StacOpacity.fromJson(Map<String, dynamic> json) =>
      _$StacOpacityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacOpacityToJson(this);
}
