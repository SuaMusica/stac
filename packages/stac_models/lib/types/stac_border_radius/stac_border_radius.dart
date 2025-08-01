import 'package:json_annotation/json_annotation.dart';
import 'package:stac_models/core/stac_model.dart';

part 'stac_border_radius.g.dart';

@JsonSerializable()
class StacBorderRadius implements StacElement {
  const StacBorderRadius({
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  /// Creates a border radius with all corners set to the same value.
  const StacBorderRadius.all(double radius)
    : this(
        topLeft: radius,
        topRight: radius,
        bottomLeft: radius,
        bottomRight: radius,
      );

  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;

  factory StacBorderRadius.fromJson(dynamic json) {
    Map<String, dynamic> resultantJson;

    if (json is num) {
      resultantJson = {
        "topLeft": json,
        "topRight": json,
        "bottomLeft": json,
        "bottomRight": json,
      };
    } else if (json is List<dynamic> && json.length == 4) {
      bool allElementsNum = json.every((element) => element is num);
      if (!allElementsNum) {
        throw ArgumentError('Invalid input format for StacEdgeInsets');
      }
      resultantJson = {
        "topLeft": json[0],
        "topRight": json[1],
        "bottomLeft": json[2],
        "bottomRight": json[3],
      };
    } else if (json is Map<String, dynamic>) {
      resultantJson = json;
    } else {
      throw ArgumentError('Invalid input format for StacEdgeInsets');
    }

    return _$StacBorderRadiusFromJson(resultantJson);
  }

  @override
  Map<String, dynamic> toJson() => _$StacBorderRadiusToJson(this);
}
