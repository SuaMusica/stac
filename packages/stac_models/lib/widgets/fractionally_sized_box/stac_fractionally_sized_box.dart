import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/types/stac_alignment.dart';

part 'stac_fractionally_sized_box.g.dart';

@JsonSerializable()
class StacFractionallySizedBox extends StacWidget {
  const StacFractionallySizedBox({
    this.widthFactor,
    this.heightFactor,
    this.alignment,
    this.child,
  });

  @DoubleConverter()
  final double? widthFactor;

  @DoubleConverter()
  final double? heightFactor;

  final StacAlignment? alignment;

  @StacWidgetConverter()
  final StacWidget? child;

  @override
  String get type => 'fractionallySizedBox';

  factory StacFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFractionallySizedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacFractionallySizedBoxToJson(this);
}
