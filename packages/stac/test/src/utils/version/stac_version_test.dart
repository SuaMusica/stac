import 'package:flutter_test/flutter_test.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/utils/version/stac_version.dart';

void main() {
  group('StacVersion', () {
    setUp(() {
      // Reset the app version before each test
      StacRegistry.instance.registerAppVersion(null);
    });

    test('creates StacVersion instance correctly', () {
      final version = StacVersion(
        versionCode: '1.0.0',
        condition: StacConditionVersion.equal,
      );

      expect(version.versionCode, '1.0.0');
      expect(version.condition, StacConditionVersion.equal);
    });

    test('creates StacVersion from JSON correctly', () {
      final json = {
        'versionCode': '1.0.0',
        'condition': '>',
      };

      final version = StacVersion.fromJson(json);

      expect(version.versionCode, '1.0.0');
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
        StacRegistry.instance.registerAppVersion('2.0.0');
      });

      test('returns false when app version is null', () {
        StacRegistry.instance.registerAppVersion(null);
        final version = StacVersion(
          versionCode: '1.0.0',
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(), false);
      });

      test('handles equal condition correctly', () {
        final version = StacVersion(
          versionCode: '2.0.0',
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(), true);

        final differentVersion = StacVersion(
          versionCode: '1.0.0',
          condition: StacConditionVersion.equal,
        );
        expect(differentVersion.isSatisfied(), false);
      });

      test('handles greater than condition correctly', () {
        final version = StacVersion(
          versionCode: '1.0.0',
          condition: StacConditionVersion.greaterThan,
        );
        expect(version.isSatisfied(), true);

        final higherVersion = StacVersion(
          versionCode: '3.0.0',
          condition: StacConditionVersion.greaterThan,
        );
        expect(higherVersion.isSatisfied(), false);
      });

      test('handles less than condition correctly', () {
        final version = StacVersion(
          versionCode: '3.0.0',
          condition: StacConditionVersion.lessThan,
        );
        expect(version.isSatisfied(), true);

        final lowerVersion = StacVersion(
          versionCode: '1.0.0',
          condition: StacConditionVersion.lessThan,
        );
        expect(lowerVersion.isSatisfied(), false);
      });

      test('handles version components of different lengths', () {
        StacRegistry.instance.registerAppVersion('2.0.0.1');

        final version = StacVersion(
          versionCode: '2.0.0',
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(), false);

        final versionWithExtra = StacVersion(
          versionCode: '2.0.0.0',
          condition: StacConditionVersion.equal,
        );
        expect(versionWithExtra.isSatisfied(), false);

        final exactVersion = StacVersion(
          versionCode: '2.0.0.1',
          condition: StacConditionVersion.equal,
        );
        expect(exactVersion.isSatisfied(), true);
      });

      test('handles version with non-numeric components', () {
        StacRegistry.instance.registerAppVersion('2.0.alpha');

        final version = StacVersion(
          versionCode: '2.0.0',
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
