import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_widget.dart';
import 'package:stac_models/types/stac_table/stac_table_cell_vertical_alignment.dart';

part 'stac_table_cell.g.dart';

/// A Stac model representing Flutter's [TableCell] widget.
@JsonSerializable()
class StacTableCell extends StacWidget {
  /// Creates a [StacTableCell] with the given properties.
  const StacTableCell({this.verticalAlignment, this.child});

  /// How the child should be aligned vertically within the cell.
  final StacTableCellVerticalAlignment? verticalAlignment;

  /// The widget inside the table cell.
  final StacWidget? child;

  @override
  String get type => 'tableCell';

  factory StacTableCell.fromJson(Map<String, dynamic> json) =>
      _$StacTableCellFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTableCellToJson(this);
}
