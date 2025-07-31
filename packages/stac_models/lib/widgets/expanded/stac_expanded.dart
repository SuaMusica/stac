import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/core/converters/widget_converter.dart';

part 'stac_expanded.g.dart';

@JsonSerializable()
class StacExpanded extends StacWidget {
  const StacExpanded({this.flex, this.child});

  final int? flex;

  @StacWidgetConverter()
  final StacWidget? child;

  @override
  String get type => 'expanded';

  factory StacExpanded.fromJson(Map<String, dynamic> json) =>
      _$StacExpandedFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$StacExpandedToJson(this);
    json['type'] = type;
    return json;
  }
}
