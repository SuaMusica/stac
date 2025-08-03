import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/stac_models.dart';

part 'stac_scaffold.g.dart';

@JsonSerializable()
class StacScaffold extends StacWidget {
  const StacScaffold({
    this.appBar,
    this.backgroundColor,
    this.body,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.drawerDragStartBehavior = StacDragStartBehavior.start,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture,
    this.drawerScrimColor,
    this.endDrawer,
    this.endDrawerEnableOpenDragGesture,
    this.extendBody,
    this.extendBodyBehindAppBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.onDrawerChanged,
    this.onEndDrawerChanged,
    this.persistentFooterAlignment,
    this.persistentFooterButtons,
    this.primary,
    this.resizeToAvoidBottomInset,
    this.restorationId,
  });

  final StacWidget? appBar;

  final String? backgroundColor;

  final StacWidget? body;

  final StacWidget? bottomNavigationBar;

  final StacWidget? bottomSheet;

  final StacWidget? drawer;

  final StacDragStartBehavior? drawerDragStartBehavior;

  final double? drawerEdgeDragWidth;

  final bool? drawerEnableOpenDragGesture;

  final String? drawerScrimColor;

  final StacWidget? endDrawer;

  final bool? endDrawerEnableOpenDragGesture;

  final bool? extendBody;

  final bool? extendBodyBehindAppBar;

  final StacWidget? floatingActionButton;

  final StacFloatingActionButtonLocation? floatingActionButtonLocation;

  final StacAction? onDrawerChanged;

  final StacAction? onEndDrawerChanged;

  final StacAlignmentDirectional? persistentFooterAlignment;

  final List<StacWidget>? persistentFooterButtons;

  final bool? primary;

  final bool? resizeToAvoidBottomInset;

  final String? restorationId;

  @override
  String get type => 'scaffold';

  factory StacScaffold.fromJson(Map<String, dynamic> json) =>
      _$StacScaffoldFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacScaffoldToJson(this);
}
