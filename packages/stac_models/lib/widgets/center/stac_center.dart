import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/types/stac_double.dart';

part 'stac_center.g.dart';

@JsonSerializable()
class StacCenter extends StacWidget {
  StacCenter({this.widthFactor, this.heightFactor, this.child});

  final StacDouble? widthFactor;

  final StacDouble? heightFactor;

  @StacWidgetJsonConverter()
  final StacWidget? child;

  factory StacCenter.fromJson(Map<String, dynamic> json) =>
      _$StacCenterFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$StacCenterToJson(this);
    json['type'] = type;
    return json;
  }

  @override
  String get type => 'center';
}
