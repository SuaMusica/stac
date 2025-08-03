import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/painting/stac_text_style/stac_text_style.dart';

part 'stac_text_span.g.dart';

@JsonSerializable()
class StacTextSpan implements StacElement {
  StacTextSpan({this.text, this.style, this.children = const [], this.onTap});

  final String? text;
  final StacTextStyle? style;
  final List<StacTextSpan> children;
  final Map<String, dynamic>? onTap;

  @override
  Map<String, dynamic> toJson() => _$StacTextSpanToJson(this);

  factory StacTextSpan.fromJson(Map<String, dynamic> json) =>
      _$StacTextSpanFromJson(json);
}
