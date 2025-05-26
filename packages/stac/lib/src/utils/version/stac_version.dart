import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

part 'stac_version.freezed.dart';
part 'stac_version.g.dart';

@freezed
class StacVersion with _$StacVersion {
  const factory StacVersion({
    required String versionCode,
    // ignore: invalid_annotation_target
    @JsonKey(fromJson: StacVersion.fromJsonCondition)
    required StacConditionVersion condition,
  }) = _StacVersion;

  factory StacVersion.fromJson(Map<String, dynamic> json) =>
      _$StacVersionFromJson(json);

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
    final appVersion = StacRegistry.instance.appVersion;

    if (appVersion == null) {
      return false;
    }

    debugPrint(
        'stacteste: appVersion: $appVersion | versionCode: $versionCode');

    final current = appVersion.split('.').toIntList();
    final target = versionCode.split('.').toIntList();

    final maxLength = math.max(current.length, target.length);
    current.length = maxLength;
    target.length = maxLength;
    current.fillRange(current.length, maxLength, 0);
    target.fillRange(target.length, maxLength, 0);

    debugPrint(
        'stacteste: current: $current | target: $target | maxLength: $maxLength');

    // Compara os números
    for (int i = 0; i < maxLength; i++) {
      if (current[i] != target[i]) {
        final comp = current[i].compareTo(target[i]);
        debugPrint(
            'stacteste: comp: $comp | condition: $condition | current: $current | target: $target');
        return switch (condition) {
          StacConditionVersion.greaterThan => comp > 0,
          StacConditionVersion.greaterThanOrEqual => comp >= 0,
          StacConditionVersion.lessThan => comp < 0,
          StacConditionVersion.lessThanOrEqual => comp <= 0,
          StacConditionVersion.equal => comp == 0,
          StacConditionVersion.notEqual => comp != 0,
        };
      }
    }

    return false;
  }
}
