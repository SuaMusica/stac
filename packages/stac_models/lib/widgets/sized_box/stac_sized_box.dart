import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_sized_box.g.dart';

@JsonSerializable()
class StacSizedBox extends StacWidget {
  const StacSizedBox({this.width, this.height, this.child});

  @DoubleConverter()
  final double? width;

  @DoubleConverter()
  final double? height;

  @StacWidgetConverter()
  final StacWidget? child;

  @override
  String get type => 'sizedBox';

  factory StacSizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacSizedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacSizedBoxToJson(this);
}
