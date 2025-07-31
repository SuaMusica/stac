import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';

/// JSON Converter for individual StacWidget objects
/// Used with @StacWidgetJsonConverter() annotation
class StacWidgetConverter
    implements JsonConverter<StacWidget?, Map<String, dynamic>?> {
  const StacWidgetConverter();

  @override
  StacWidget? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return StacWidget(jsonData: json);
  }

  @override
  Map<String, dynamic>? toJson(StacWidget? widget) {
    return widget?.toJson();
  }
}

/// JSON Converter for [List<StacWidget>] objects
/// Used with @StacWidgetListJsonConverter() annotation
class StacWidgetListConverter
    implements JsonConverter<List<StacWidget>?, dynamic> {
  const StacWidgetListConverter();

  @override
  List<StacWidget>? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is! List) return null;

    return json
        .cast<Map<String, dynamic>>()
        .map((item) => StacWidget(jsonData: item))
        .toList();
  }

  @override
  List<Map<String, dynamic>>? toJson(List<StacWidget>? widgets) {
    if (widgets == null) return null;
    return widgets.map((widget) => widget.toJson()).toList();
  }
}
