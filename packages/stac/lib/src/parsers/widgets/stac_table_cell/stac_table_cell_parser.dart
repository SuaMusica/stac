import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_models/widgets/table_cell/stac_table_cell.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTableCellParser extends StacParser<StacTableCell> {
  const StacTableCellParser();

  @override
  String get type => WidgetType.tableCell.name;

  @override
  StacTableCell getModel(Map<String, dynamic> json) =>
      StacTableCell.fromJson(json);

  @override
  Widget parse(BuildContext context, StacTableCell model) {
    return TableCell(
      verticalAlignment: model.verticalAlignment?.parse,
      child: model.child?.parse(context) ?? const SizedBox(),
    );
  }
}
