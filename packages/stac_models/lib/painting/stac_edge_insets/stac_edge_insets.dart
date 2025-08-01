import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_edge_insets.g.dart';

@JsonSerializable()
class StacEdgeInsets extends StacElement {
  const StacEdgeInsets({this.left, this.top, this.right, this.bottom});

  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  const StacEdgeInsets.all(double value)
    : this(left: value, top: value, right: value, bottom: value);

  const StacEdgeInsets.only({this.left, this.top, this.right, this.bottom});

  const StacEdgeInsets.symmetric({double? vertical, double? horizontal})
    : this(
        left: horizontal,
        top: vertical,
        right: horizontal,
        bottom: vertical,
      );

  const StacEdgeInsets.horizontal(double value)
    : this.symmetric(horizontal: value);

  const StacEdgeInsets.vertical(double value) : this.symmetric(vertical: value);

  factory StacEdgeInsets.fromJson(dynamic json) {
    Map<String, dynamic> resultantJson;

    if (json is num) {
      resultantJson = {
        "left": json,
        "top": json,
        "right": json,
        "bottom": json,
      };
    } else if (json is List<dynamic> && json.length == 4) {
      bool allElementsNum = json.every((element) => element is num);
      if (!allElementsNum) {
        throw ArgumentError('Invalid input format for StacEdgeInsets');
      }
      resultantJson = {
        "left": json[0],
        "top": json[1],
        "right": json[2],
        "bottom": json[3],
      };
    } else if (json is Map<String, dynamic>) {
      resultantJson = json;
    } else {
      throw ArgumentError('Invalid input format for StacEdgeInsets');
    }

    return _$StacEdgeInsetsFromJson(resultantJson);
  }

  @override
  Map<String, dynamic> toJson() => _$StacEdgeInsetsToJson(this);
}
