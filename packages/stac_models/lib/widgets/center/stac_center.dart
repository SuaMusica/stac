import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_center.g.dart';

@JsonSerializable()
class StacCenter extends StacWidget {
  StacCenter({this.widthFactor, this.heightFactor, this.child});

  @DoubleConverter()
  final double? widthFactor;

  @DoubleConverter()
  final double? heightFactor;

  @StacWidgetConverter()
  final StacWidget? child;

  factory StacCenter.fromJson(Map<String, dynamic> json) =>
      _$StacCenterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacCenterToJson(this);

  @override
  String get type => 'center';
}
