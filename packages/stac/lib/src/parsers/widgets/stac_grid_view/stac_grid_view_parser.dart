import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:stac/src/parsers/painting/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/types/type_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_models/widgets/grid_view/stac_grid_view.dart';

class StacGridViewParser extends StacParser<StacGridView> {
  const StacGridViewParser();

  @override
  String get type => WidgetType.gridView.name;

  @override
  StacGridView getModel(Map<String, dynamic> json) =>
      StacGridView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacGridView model) {
    return GridView.builder(
      scrollDirection: model.scrollDirection?.parse ?? Axis.vertical,
      reverse: model.reverse ?? false,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap ?? false,
      padding: model.padding?.parse,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: model.crossAxisCount ?? 0,
        mainAxisSpacing: model.mainAxisSpacing ?? 0.0,
        crossAxisSpacing: model.crossAxisSpacing ?? 0.0,
        childAspectRatio: model.childAspectRatio ?? 1.0,
        mainAxisExtent: model.mainAxisExtent,
      ),
      addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
      addRepaintBoundaries: model.addRepaintBoundaries ?? true,
      addSemanticIndexes: model.addSemanticIndexes ?? true,
      cacheExtent: model.cacheExtent,
      itemBuilder: (context, index) {
        final List<Widget>? parsed = model.children?.parseList(context);
        if (parsed == null || index >= parsed.length) {
          return const SizedBox.shrink();
        }
        return parsed[index];
      },
      itemCount: model.children?.length ?? 0,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior:
          model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      keyboardDismissBehavior: model.keyboardDismissBehavior?.parse ??
          ScrollViewKeyboardDismissBehavior.manual,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
    );
  }
}
