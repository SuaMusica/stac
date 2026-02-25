import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/utils/version/stac_version.dart';

String _platformSuffix() {
  if (kIsWeb) {
    return 'web';
  }
  return defaultTargetPlatform.name.toLowerCase();
}

final String platform = _platformSuffix();

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
        expect(nullString.toStacConditionVersion(),
            StacConditionVersion.notEqual);
      });
    });

    group('isSatisfied', () {
      setUp(() {
        StacRegistry.instance.registerBuildNumber(2000);
      });

      test('returns true when app version is null', () {
        final version = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.equal,
        );
        // When there is no app build number (e.g. StacRegistry.instance.registerBuildNumber(null)),
        // StacVersion.isSatisfied should treat the constraint as satisfied.
        expect(version.isSatisfied(null), true);
      });

      test('handles equal condition correctly', () {
        final version = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(StacRegistry.instance.buildNumber), true);

        final differentVersion = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.equal,
        );
        expect(differentVersion.isSatisfied(StacRegistry.instance.buildNumber),
            false);
      });

      test('handles greater than condition correctly', () {
        final version = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.greaterThan,
        );
        expect(version.isSatisfied(StacRegistry.instance.buildNumber), true);

        final higherVersion = StacVersion(
          buildNumber: 3000,
          condition: StacConditionVersion.greaterThan,
        );
        expect(higherVersion.isSatisfied(StacRegistry.instance.buildNumber),
            false);
      });

      test('handles less than condition correctly', () {
        final version = StacVersion(
          buildNumber: 3000,
          condition: StacConditionVersion.lessThan,
        );
        expect(version.isSatisfied(StacRegistry.instance.buildNumber), true);

        final lowerVersion = StacVersion(
          buildNumber: 1000,
          condition: StacConditionVersion.lessThan,
        );
        expect(
            lowerVersion.isSatisfied(StacRegistry.instance.buildNumber), false);
      });

      test('handles version components of different lengths', () {
        StacRegistry.instance.registerBuildNumber(20001);

        final version = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(StacRegistry.instance.buildNumber), false);

        final versionWithExtra = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(versionWithExtra.isSatisfied(StacRegistry.instance.buildNumber),
            false);

        final exactVersion = StacVersion(
          buildNumber: 20001,
          condition: StacConditionVersion.equal,
        );
        expect(
            exactVersion.isSatisfied(StacRegistry.instance.buildNumber), true);
      });

      test('handles build number equality', () {
        StacRegistry.instance.registerBuildNumber(2000);

        final version = StacVersion(
          buildNumber: 2000,
          condition: StacConditionVersion.equal,
        );
        expect(version.isSatisfied(StacRegistry.instance.buildNumber), true);
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

  /// platform tests
  group('platform tests', () {
    test('uses platform-specific buildNumber when available', () {
      final json = {
        'buildNumber': 1000,
        'buildNumber_$platform': 2000,
        'condition': '>',
      };

      final version = StacVersion.fromJson(json);

      // Should use platform-specific buildNumber (`platform` in this case)
      expect(version.buildNumber, 2000);
      expect(version.condition, StacConditionVersion.greaterThan);
    });

    test(
        'falls back to generic buildNumber when platform-specific not available',
        () {
      final json = {
        'buildNumber': 1500,
        // Use a platform key that will not match the current platform,
        // so the generic buildNumber is always used.
        'buildNumber_fuchsia': 2500,
        'condition': '>=',
      };

      final version = StacVersion.fromJson(json);

      // Should use generic buildNumber since `platform`-specific is not available
      expect(version.buildNumber, 1500);
      expect(version.condition, StacConditionVersion.greaterThanOrEqual);
    });

    test('uses platform-specific condition when available', () {
      final json = {
        'buildNumber': 1000,
        'condition': '>',
        'condition_$platform': '<=',
      };

      final version = StacVersion.fromJson(json);

      expect(version.buildNumber, 1000);
      // Should use platform-specific condition
      expect(version.condition, StacConditionVersion.lessThanOrEqual);
    });

    test('falls back to generic condition when platform-specific not available',
        () {
      final json = {
        'buildNumber': 1000,
        'condition': '<',
        'condition_windows': '!=', // Different platform
      };

      final version = StacVersion.fromJson(json);

      expect(version.buildNumber, 1000);
      // Should use generic condition since `platform`-specific is not available
      expect(version.condition, StacConditionVersion.lessThan);
    });

    test('uses both platform-specific values when available', () {
      final json = {
        'buildNumber': 1000,
        'buildNumber_$platform': 3000,
        'condition': '>',
        'condition_$platform': '==',
      };

      final version = StacVersion.fromJson(json);

      // Should use both platform-specific values
      expect(version.buildNumber, 3000);
      expect(version.condition, StacConditionVersion.equal);
    });

    test('handles missing generic fallback gracefully', () {
      final json = {
        'buildNumber_ios':
            2000, // Only platform-specific for different platform
        'condition_android':
            '>=', // Only platform-specific for different platform
      };

      // This should throw or handle gracefully since there's no fallback
      expect(() => StacVersion.fromJson(json), throwsA(isA<Error>()));
    });

    test('toPlatformJson method works correctly', () {
      final json = {
        'key': 'generic_value',
        'key_$platform': 'platform_value',
        'other_key': 'other_generic',
      };

      // Should return platform-specific value when available
      expect(StacVersion.toPlatformJson(json, 'key'), 'platform_value');

      // Should return generic value when platform-specific not available
      expect(StacVersion.toPlatformJson(json, 'other_key'), 'other_generic');

      // Should return null when neither exists
      expect(StacVersion.toPlatformJson(json, 'missing_key'), isNull);
    });
  });
}
