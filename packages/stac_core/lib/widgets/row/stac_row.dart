import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

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

  final List<StacWidget>? children;

  @override
  String get type => 'row';

  factory StacRow.fromJson(Map<String, dynamic> json) =>
      _$StacRowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacRowToJson(this);
}
