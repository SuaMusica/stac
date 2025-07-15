import 'package:stac_export/core/stac_widgets.dart';

class StacScaffold extends StacWidget {
  StacScaffold({
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.persistentFooterButtons,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary,
    this.drawerDragStartBehavior,
    this.extendBody,
    this.extendBodyBehindAppBar,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture,
    this.endDrawerEnableOpenDragGesture,
    this.restorationId,
  });

  final StacWidget? appBar;
  final StacWidget? body;
  final StacWidget? floatingActionButton;
  final StacFloatingActionButtonLocation? floatingActionButtonLocation;
  final List<StacWidget>? persistentFooterButtons;
  final StacWidget? drawer;
  final StacWidget? endDrawer;
  final StacWidget? bottomNavigationBar;
  final StacWidget? bottomSheet;
  final String? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool? primary;
  final StacDragStartBehavior? drawerDragStartBehavior;
  final bool? extendBody;
  final bool? extendBodyBehindAppBar;
  final String? drawerScrimColor;
  final double? drawerEdgeDragWidth;
  final bool? drawerEnableOpenDragGesture;
  final bool? endDrawerEnableOpenDragGesture;
  final String? restorationId;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'appBar': appBar,
      'body': body,
      'floatingActionButton': floatingActionButton,
      'floatingActionButtonLocation': floatingActionButtonLocation,
      'persistentFooterButtons': persistentFooterButtons,
      'drawer': drawer,
      'endDrawer': endDrawer,
      'bottomNavigationBar': bottomNavigationBar,
      'bottomSheet': bottomSheet,
      'backgroundColor': backgroundColor,
      'resizeToAvoidBottomInset': resizeToAvoidBottomInset,
      'primary': primary,
      'drawerDragStartBehavior': drawerDragStartBehavior,
      'extendBody': extendBody,
      'extendBodyBehindAppBar': extendBodyBehindAppBar,
      'drawerScrimColor': drawerScrimColor,
      'drawerEdgeDragWidth': drawerEdgeDragWidth,
      'drawerEnableOpenDragGesture': drawerEnableOpenDragGesture,
      'endDrawerEnableOpenDragGesture': endDrawerEnableOpenDragGesture,
      'restorationId': restorationId,
    };
  }

  @override
  String get type => 'scaffold';
}

enum StacFloatingActionButtonLocation {
  startTop,
  miniStartTop,
  centerTop,
  miniCenterTop,
  endTop,
  miniEndTop,
  startFloat,
  miniStartFloat,
  centerFloat,
  miniCenterFloat,
  endFloat,
  miniEndFloat,
  startDocked,
  miniStartDocked,
  centerDocked,
  miniCenterDocked,
  endDocked,
  miniEndDocked,
}

enum StacDragStartBehavior { down, start }
