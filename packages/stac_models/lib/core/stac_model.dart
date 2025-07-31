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
