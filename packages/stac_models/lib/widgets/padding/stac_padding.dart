import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/painting/painting.dart';

part 'stac_padding.g.dart';

@JsonSerializable()
class StacPadding extends StacWidget {
  const StacPadding({this.padding, this.child});

  final StacEdgeInsets? padding;

  @StacWidgetJsonConverter()
  final StacWidget? child;

  @override
  String get type => 'padding';

  factory StacPadding.fromJson(Map<String, dynamic> json) =>
      _$StacPaddingFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    final json = _$StacPaddingToJson(this);
    json['type'] = type;
    return json;
  }
}
