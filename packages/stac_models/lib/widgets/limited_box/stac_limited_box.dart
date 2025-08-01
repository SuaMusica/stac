import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_limited_box.g.dart';

@JsonSerializable()
class StacLimitedBox extends StacWidget {
  const StacLimitedBox({
    this.maxWidth,
    this.maxHeight,
    this.child,
  });

  @DoubleConverter()
  final double? maxWidth;

  @DoubleConverter()
  final double? maxHeight;

  @StacWidgetConverter()
  final StacWidget? child;

  @override
  String get type => 'limitedBox';

  factory StacLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$StacLimitedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacLimitedBoxToJson(this);
}
