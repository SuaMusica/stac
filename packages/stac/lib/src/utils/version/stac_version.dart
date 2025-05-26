import 'dart:math' as math;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_version.freezed.dart';
part 'stac_version.g.dart';

@freezed
class StacVersion with _$StacVersion {
  const factory StacVersion({
    required String version,
    required StacConditionVersion condition,
  }) = _StacVersion;

  factory StacVersion.fromJson(Map<String, dynamic> json) =>
      _$StacVersionFromJson(json);

  bool isSatisfied(String? targetVersion) {
    if (targetVersion == null) {
      return false;
    }

    final current = version.split('.').toIntList();
    final target = targetVersion.split('.').toIntList();

    final maxLength = math.max(current.length, target.length);
    current.length = maxLength;
    target.length = maxLength;
    current.fillRange(current.length, maxLength, 0);
    target.fillRange(target.length, maxLength, 0);

    // Compara os números
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

    return false;
  }
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
