import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/utils/version/stac_version.dart';

void main() {
  group('StacVersion', () {
    setUp(() {
      // Reset the app version before each test
      StacRegistry.instance.registerBuildNumber(null);
    });

    test('creates StacVersion instance correctly', () {
      final version = StacVersion(
        buildNumber: 1000,
        condition: StacConditionVersion.equal,
      );

      expect(version.buildNumber, 1000);
      expect(version.condition, StacConditionVersion.equal);
    });

    test('creates StacVersion from JSON correctly', () {
      final json = {
        'buildNumber': 1000,
        'condition': '>',
      };

      final version = StacVersion.fromJson(json);

      expect(version.buildNumber, 1000);
      expect(version.condition, StacConditionVersion.greaterThan);
    });

    group('condition parsing', () {
      test('parses all condition types correctly', () {
        final conditions = {
          '>': StacConditionVersion.greaterThan,
          '>=': StacConditionVersion.greaterThanOrEqual,
          '<': StacConditionVersion.lessThan,
          '<=': StacConditionVersion.lessThanOrEqual,
          '==': StacConditionVersion.equal,
          'invalid': StacConditionVersion.notEqual,
        };

        conditions.forEach((input, expected) {
          expect(input.toStacConditionVersion(), expected);
        });
      });

      test('handles null input by returning notEqual', () {
        String? nullString;
        expect(
            nullString.toStacConditionVersion(), StacConditionVersion.notEqual);
      });
    });

    group('isSatisfied', () {
      setUp(() {
        StacRegistry.instance.registerBuildNumber(2000);
      });

      test('returns false when app version is null', () {
        StacRegistry.instance.registerBuildNumber(null);
        final version = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(), false);
      });

      test('handles equal condition correctly', () {
        final version = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(), true);

        final differentVersion = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.equal,
        );
        expect(differentVersion.isSatisfied(), false);
      });

      test('handles greater than condition correctly', () {
        final version = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.greaterThan,
        );
        expect(version.isSatisfied(), true);

        final higherVersion = StacVersion(
          buildNumber: 3000,
          condition: StacConditionVersion.greaterThan,
        );
        expect(higherVersion.isSatisfied(), false);
      });

      test('handles less than condition correctly', () {
        final version = StacVersion(
          buildNumber: 3000,
          condition: StacConditionVersion.lessThan,
        );
        expect(version.isSatisfied(), true);

        final lowerVersion = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.lessThan,
        );
        expect(lowerVersion.isSatisfied(), false);
      });

      test('handles version components of different lengths', () {
        StacRegistry.instance.registerBuildNumber(20001);

        final version = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(), false);

        final versionWithExtra = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(versionWithExtra.isSatisfied(), false);

        final exactVersion = StacVersion(
          buildNumber: 20001,
          condition: StacConditionVersion.equal,
        );
        expect(exactVersion.isSatisfied(), true);
      });

      test('handles version with non-numeric components', () {
        StacRegistry.instance.registerBuildNumber(2000);

        final version = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        // Non-numeric components should be treated as 0
        expect(version.isSatisfied(), true);
      });
    });

    test('converts condition to string correctly', () {
      final conditions = {
        StacConditionVersion.greaterThan: '>',
        StacConditionVersion.greaterThanOrEqual: '>=',
        StacConditionVersion.lessThan: '<',
        StacConditionVersion.lessThanOrEqual: '<=',
        StacConditionVersion.equal: '==',
        StacConditionVersion.notEqual: '!=',
      };

      conditions.forEach((condition, expected) {
        expect(condition.toTypeString(), expected);
      });
    });
  });
}
