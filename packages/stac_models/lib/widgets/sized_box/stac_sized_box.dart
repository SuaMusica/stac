import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/types/stac_double.dart';

part 'stac_sized_box.g.dart';

@JsonSerializable()
class StacSizedBox extends StacWidget {
  const StacSizedBox({this.width, this.height, this.child});

  final StacDouble? width;
  final StacDouble? height;

  @StacWidgetJsonConverter()
  final StacWidget? child;

  @override
  static String get type => 'sizedBox';

  factory StacSizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacSizedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$StacSizedBoxToJson(this);
    json['type'] = type;
    return json;
  }
}
