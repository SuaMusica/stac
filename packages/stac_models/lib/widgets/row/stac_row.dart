import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/converters/double_converter.dart';
import 'package:stac_models/core/converters/widget_converter.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/types/stac_cross_axis_alignment.dart';
import 'package:stac_models/types/stac_main_axis_alignment.dart';
import 'package:stac_models/types/stac_main_axis_size.dart';
import 'package:stac_models/types/stac_text_types.dart';
import 'package:stac_models/types/stac_vertical_direction.dart';

part 'stac_row.g.dart';

@JsonSerializable()
class StacRow extends StacWidget {
  const StacRow({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.spacing,
    this.children,
  });

  final StacMainAxisAlignment? mainAxisAlignment;

  final StacMainAxisSize? mainAxisSize;

  final StacCrossAxisAlignment? crossAxisAlignment;

  final StacTextDirection? textDirection;

  final StacVerticalDirection? verticalDirection;

  final StacTextBaseline? textBaseline;

  @DoubleConverter()
  final double? spacing;

  @StacWidgetListConverter()
  final List<StacWidget>? children;

  @override
  String get type => 'row';

  factory StacRow.fromJson(Map<String, dynamic> json) =>
      _$StacRowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacRowToJson(this);
}
