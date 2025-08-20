import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/painting/painting.dart';

part 'stac_padding.g.dart';

@JsonSerializable()
class StacPadding extends StacWidget {
  const StacPadding({this.padding, this.child});

  final StacEdgeInsets? padding;

  final StacWidget? child;

  @override
  String get type => 'padding';

  factory StacPadding.fromJson(Map<String, dynamic> json) =>
      _$StacPaddingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacPaddingToJson(this);
}
