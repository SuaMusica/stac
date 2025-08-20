import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_center.g.dart';

@JsonSerializable()
class StacCenter extends StacWidget {
  StacCenter({this.widthFactor, this.heightFactor, this.child});

  @DoubleConverter()
  final double? widthFactor;

  @DoubleConverter()
  final double? heightFactor;

  final StacWidget? child;

  factory StacCenter.fromJson(Map<String, dynamic> json) =>
      _$StacCenterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacCenterToJson(this);

  @override
  String get type => 'center';
}
