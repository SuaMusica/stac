import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';
import 'package:stac_models/types/stac_cross_axis_alignment.dart';
import 'package:stac_models/types/stac_double.dart';
import 'package:stac_models/types/stac_main_axis_alignment.dart';
import 'package:stac_models/types/stac_main_axis_size.dart';
import 'package:stac_models/types/stac_text_types.dart';
import 'package:stac_models/types/stac_vertical_direction.dart';

part 'stac_column.g.dart';

@JsonSerializable()
class StacColumn extends StacWidget {
  const StacColumn({
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
  final StacDouble? spacing;

  @StacWidgetListJsonConverter()
  final List<StacWidget>? children;

  @override
  String get type => 'column';

  factory StacColumn.fromJson(Map<String, dynamic> json) =>
      _$StacColumnFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacColumnToJson(this);
}
