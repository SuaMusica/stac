import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      condition: toPlatformJson(json, 'condition').toStacConditionVersion(),
    );
  }

  static dynamic toPlatformJson(Map<String, dynamic> json, String key) =>
      json['${key}_${Platform.operatingSystem}'] ?? json[key];

  static StacConditionVersion fromJsonCondition(String? json) =>
      json?.toStacConditionVersion() ?? StacConditionVersion.notEqual;
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
    final buildNumber = StacRegistry.instance.buildNumber;

    if (buildNumber == null) {
      return false;
    }

    debugPrint(
        'stacteste: buildNumber: $buildNumber | buildNumber: $buildNumber');

    final current = buildNumber.split('.').toIntList();
    final target = buildNumber.split('.').toIntList();

    final maxLength =
        [current.length, target.length].reduce((a, b) => a > b ? a : b);

    while (current.length < maxLength) {
      current.add(0);
    }
    while (target.length < maxLength) {
      target.add(0);
    }

    for (int i = 0; i < maxLength; i++) {
      if (current[i] != target[i]) {
        final comp = current[i].compareTo(target[i]);
        return switch (condition) {
          StacConditionVersion.greaterThan => comp > 0,
          StacConditionVersion.greaterThanOrEqual => comp >= 0,
          StacConditionVersion.lessThan => comp < 0,
          StacConditionVersion.lessThanOrEqual => comp <= 0,
          StacConditionVersion.equal => false,
          StacConditionVersion.notEqual => true,
        };
      }
    }

    return switch (condition) {
      StacConditionVersion.greaterThan => false,
      StacConditionVersion.greaterThanOrEqual => true,
      StacConditionVersion.lessThan => false,
      StacConditionVersion.lessThanOrEqual => true,
      StacConditionVersion.equal => true,
      StacConditionVersion.notEqual => false,
    };
  }
}
