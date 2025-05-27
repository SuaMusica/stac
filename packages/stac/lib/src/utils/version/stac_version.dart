import 'dart:io';

import 'package:stac/stac.dart';

class StacVersion {
  const StacVersion({
    required this.buildNumber,
    required this.condition,
  });

  final int buildNumber;
  final StacConditionVersion condition;

  factory StacVersion.fromJson(Map<String, dynamic> json) {
    return StacVersion(
      buildNumber: toPlatformJson(json, 'buildNumber').toInt(),
      condition: (toPlatformJson(json, 'condition') as String?)
          .toStacConditionVersion(),
    );
  }

  static dynamic toPlatformJson(Map<String, dynamic> json, String key) =>
      json['${key}_${Platform.operatingSystem}'] ?? json[key];
}

enum StacConditionVersion {
  greaterThan,
  greaterThanOrEqual,
  lessThan,
  lessThanOrEqual,
  equal,
  notEqual,
}

extension StacConditionVersionX on String? {
  StacConditionVersion toStacConditionVersion() => switch (this) {
        '>' => StacConditionVersion.greaterThan,
        '>=' => StacConditionVersion.greaterThanOrEqual,
        '<' => StacConditionVersion.lessThan,
        '<=' => StacConditionVersion.lessThanOrEqual,
        '==' => StacConditionVersion.equal,
        '!=' => StacConditionVersion.notEqual,
        _ => StacConditionVersion.notEqual,
      };
}

extension StacConditionVersionToStringX on StacConditionVersion {
  String toTypeString() => switch (this) {
        StacConditionVersion.greaterThan => '>',
        StacConditionVersion.greaterThanOrEqual => '>=',
        StacConditionVersion.lessThan => '<',
        StacConditionVersion.lessThanOrEqual => '<=',
        StacConditionVersion.equal => '==',
        StacConditionVersion.notEqual => '!=',
      };
}

extension ListStringX on List<String> {
  List<int> toIntList() => map((e) => int.tryParse(e) ?? 0).toList();
}

extension StacVersionX on StacVersion {
  bool isSatisfied() {
    final appBuildNumber = StacRegistry.instance.buildNumber;
    if (appBuildNumber == null) {
      return true;
    }

    return switch (condition) {
      StacConditionVersion.greaterThan => appBuildNumber > buildNumber,
      StacConditionVersion.greaterThanOrEqual => appBuildNumber >= buildNumber,
      StacConditionVersion.lessThan => appBuildNumber < buildNumber,
      StacConditionVersion.lessThanOrEqual => appBuildNumber <= buildNumber,
      StacConditionVersion.equal => appBuildNumber == buildNumber,
      StacConditionVersion.notEqual => appBuildNumber != buildNumber,
    };
  }
}
