import 'package:json_annotation/json_annotation.dart';

/// Type aliases for common STAC types
typedef StacAction = dynamic;

/// Base interface for all STAC elements that can be serialized to JSON
abstract class StacElement {
  const StacElement();

  /// Converts this element to a JSON map
  dynamic toJson();
}

/// Base class for all STAC widgets
/// This is a concrete implementation that can hold raw JSON data,
/// used primarily by JSON converters for deserialization
class StacWidget extends StacElement {
  const StacWidget({this.jsonData});

  /// Raw JSON data for this widget
  final Map<String, dynamic>? jsonData;

  @override
  Map<String, dynamic> toJson() => jsonData ?? {};

  @JsonKey(includeToJson: true)
  String get type => throw UnimplementedError();
}

/// JSON Converter for individual StacWidget objects
/// Used with @StacWidgetJsonConverter() annotation
class StacWidgetJsonConverter
    implements JsonConverter<StacWidget?, Map<String, dynamic>?> {
  const StacWidgetJsonConverter();

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
class StacWidgetListJsonConverter
    implements JsonConverter<List<StacWidget>?, List<Map<String, dynamic>>?> {
  const StacWidgetListJsonConverter();

  @override
  List<StacWidget>? fromJson(List<Map<String, dynamic>>? json) {
    if (json == null) return null;
    return json.map((item) => StacWidget(jsonData: item)).toList();
  }

  @override
  List<Map<String, dynamic>>? toJson(List<StacWidget>? widgets) {
    if (widgets == null) return null;
    return widgets.map((widget) => widget.toJson()).toList();
  }
}
