// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacScaffold _$StacScaffoldFromJson(Map<String, dynamic> json) => StacScaffold(
  appBar: const StacWidgetConverter().fromJson(
    json['appBar'] as Map<String, dynamic>?,
  ),
  backgroundColor: json['backgroundColor'] as String?,
  body: const StacWidgetConverter().fromJson(
    json['body'] as Map<String, dynamic>?,
  ),
  bottomNavigationBar: const StacWidgetConverter().fromJson(
    json['bottomNavigationBar'] as Map<String, dynamic>?,
  ),
  bottomSheet: const StacWidgetConverter().fromJson(
    json['bottomSheet'] as Map<String, dynamic>?,
  ),
  drawer: const StacWidgetConverter().fromJson(
    json['drawer'] as Map<String, dynamic>?,
  ),
  drawerDragStartBehavior:
      $enumDecodeNullable(
        _$StacDragStartBehaviorEnumMap,
        json['drawerDragStartBehavior'],
      ) ??
      StacDragStartBehavior.start,
  drawerEdgeDragWidth: (json['drawerEdgeDragWidth'] as num?)?.toDouble(),
  drawerEnableOpenDragGesture: json['drawerEnableOpenDragGesture'] as bool?,
  drawerScrimColor: json['drawerScrimColor'] as String?,
  endDrawer: const StacWidgetConverter().fromJson(
    json['endDrawer'] as Map<String, dynamic>?,
  ),
  endDrawerEnableOpenDragGesture:
      json['endDrawerEnableOpenDragGesture'] as bool?,
  extendBody: json['extendBody'] as bool?,
  extendBodyBehindAppBar: json['extendBodyBehindAppBar'] as bool?,
  floatingActionButton: const StacWidgetConverter().fromJson(
    json['floatingActionButton'] as Map<String, dynamic>?,
  ),
  floatingActionButtonLocation: $enumDecodeNullable(
    _$StacFloatingActionButtonLocationEnumMap,
    json['floatingActionButtonLocation'],
  ),
  onDrawerChanged: json['onDrawerChanged'] as Map<String, dynamic>?,
  onEndDrawerChanged: json['onEndDrawerChanged'] as Map<String, dynamic>?,
  persistentFooterAlignment: $enumDecodeNullable(
    _$StacAlignmentDirectionalEnumMap,
    json['persistentFooterAlignment'],
  ),
  persistentFooterButtons: const StacWidgetListConverter().fromJson(
    json['persistentFooterButtons'],
  ),
  primary: json['primary'] as bool?,
  resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] as bool?,
  restorationId: json['restorationId'] as String?,
);

Map<String, dynamic> _$StacScaffoldToJson(StacScaffold instance) =>
    <String, dynamic>{
      'appBar': const StacWidgetConverter().toJson(instance.appBar),
      'backgroundColor': instance.backgroundColor,
      'body': const StacWidgetConverter().toJson(instance.body),
      'bottomNavigationBar': const StacWidgetConverter().toJson(
        instance.bottomNavigationBar,
      ),
      'bottomSheet': const StacWidgetConverter().toJson(instance.bottomSheet),
      'drawer': const StacWidgetConverter().toJson(instance.drawer),
      'drawerDragStartBehavior':
          _$StacDragStartBehaviorEnumMap[instance.drawerDragStartBehavior],
      'drawerEdgeDragWidth': instance.drawerEdgeDragWidth,
      'drawerEnableOpenDragGesture': instance.drawerEnableOpenDragGesture,
      'drawerScrimColor': instance.drawerScrimColor,
      'endDrawer': const StacWidgetConverter().toJson(instance.endDrawer),
      'endDrawerEnableOpenDragGesture': instance.endDrawerEnableOpenDragGesture,
      'extendBody': instance.extendBody,
      'extendBodyBehindAppBar': instance.extendBodyBehindAppBar,
      'floatingActionButton': const StacWidgetConverter().toJson(
        instance.floatingActionButton,
      ),
      'floatingActionButtonLocation':
          _$StacFloatingActionButtonLocationEnumMap[instance
              .floatingActionButtonLocation],
      'onDrawerChanged': instance.onDrawerChanged,
      'onEndDrawerChanged': instance.onEndDrawerChanged,
      'persistentFooterAlignment':
          _$StacAlignmentDirectionalEnumMap[instance.persistentFooterAlignment],
      'persistentFooterButtons': const StacWidgetListConverter().toJson(
        instance.persistentFooterButtons,
      ),
      'primary': instance.primary,
      'resizeToAvoidBottomInset': instance.resizeToAvoidBottomInset,
      'restorationId': instance.restorationId,
      'type': instance.type,
    };

const _$StacDragStartBehaviorEnumMap = {
  StacDragStartBehavior.down: 'down',
  StacDragStartBehavior.start: 'start',
};

const _$StacFloatingActionButtonLocationEnumMap = {
  StacFloatingActionButtonLocation.startTop: 'startTop',
  StacFloatingActionButtonLocation.miniStartTop: 'miniStartTop',
  StacFloatingActionButtonLocation.centerTop: 'centerTop',
  StacFloatingActionButtonLocation.miniCenterTop: 'miniCenterTop',
  StacFloatingActionButtonLocation.endTop: 'endTop',
  StacFloatingActionButtonLocation.miniEndTop: 'miniEndTop',
  StacFloatingActionButtonLocation.startFloat: 'startFloat',
  StacFloatingActionButtonLocation.miniStartFloat: 'miniStartFloat',
  StacFloatingActionButtonLocation.centerFloat: 'centerFloat',
  StacFloatingActionButtonLocation.miniCenterFloat: 'miniCenterFloat',
  StacFloatingActionButtonLocation.endFloat: 'endFloat',
  StacFloatingActionButtonLocation.miniEndFloat: 'miniEndFloat',
  StacFloatingActionButtonLocation.startDocked: 'startDocked',
  StacFloatingActionButtonLocation.miniStartDocked: 'miniStartDocked',
  StacFloatingActionButtonLocation.centerDocked: 'centerDocked',
  StacFloatingActionButtonLocation.miniCenterDocked: 'miniCenterDocked',
  StacFloatingActionButtonLocation.endDocked: 'endDocked',
  StacFloatingActionButtonLocation.miniEndDocked: 'miniEndDocked',
};

const _$StacAlignmentDirectionalEnumMap = {
  StacAlignmentDirectional.topStart: 'topStart',
  StacAlignmentDirectional.topCenter: 'topCenter',
  StacAlignmentDirectional.topEnd: 'topEnd',
  StacAlignmentDirectional.centerStart: 'centerStart',
  StacAlignmentDirectional.center: 'center',
  StacAlignmentDirectional.centerEnd: 'centerEnd',
  StacAlignmentDirectional.bottomStart: 'bottomStart',
  StacAlignmentDirectional.bottomCenter: 'bottomCenter',
  StacAlignmentDirectional.bottomEnd: 'bottomEnd',
};
