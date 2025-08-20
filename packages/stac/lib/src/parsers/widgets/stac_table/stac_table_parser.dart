import 'package:flutter/material.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_core/widgets/table/stac_table.dart';
import 'package:stac_framework/stac_framework.dart';

class StacTableParser extends StacParser<StacTable> {
  const StacTableParser();

  @override
  StacTable getModel(Map<String, dynamic> json) => StacTable.fromJson(json);

  @override
  String get type => WidgetType.table.name;

  @override
  Widget parse(BuildContext context, StacTable model) {
    return Table(
      children: model.children.map((row) => row.parse(context)).toList(),
      columnWidths: model.columnWidths?.map((key, value) =>
          MapEntry(key, StacTableColumnWidthParser(value).parse)),
      defaultColumnWidth: model.defaultColumnWidth != null
          ? StacTableColumnWidthParser(model.defaultColumnWidth!).parse
          : const FlexColumnWidth(),
      textDirection: model.textDirection?.parse,
      border: model.border != null
          ? StacTableBorderParser(model.border!).parse(context)
          : null,
      defaultVerticalAlignment: model.defaultVerticalAlignment.parse,
      textBaseline: model.textBaseline?.parse,
    );
  }
}
