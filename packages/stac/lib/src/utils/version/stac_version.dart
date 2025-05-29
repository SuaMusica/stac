import 'dart:io';

import 'package:stac/stac.dart';

/// # STAC Version Management System
///
/// This module provides a comprehensive version management system for STAC applications,
/// allowing for flexible version-based feature control and compatibility checking.
///
/// ## Overview
///
/// The STAC Version system enables developers to control feature availability and
/// application behavior based on build numbers and version conditions. This is
/// particularly useful for:
///
/// - **Feature Flags**: Enable/disable features based on app version
/// - **Backward Compatibility**: Ensure compatibility across different app versions
/// - **Gradual Rollouts**: Control feature deployment to specific version ranges
/// - **Platform-Specific Versioning**: Handle different versioning schemes per platform
///
/// ## Key Components
///
/// - `StacVersion`: Main class representing a version constraint
/// - `StacConditionVersion`: Enum defining comparison operators
/// - Platform-aware JSON parsing for cross-platform compatibility
///
/// ## Usage Examples
///
/// ### Basic Version Checking
/// ```dart
/// // Check if current app version satisfies a minimum requirement
/// final minVersion = StacVersion(
///   buildNumber: 100,
///   condition: StacConditionVersion.greaterThanOrEqual,
/// );
///
/// final currentBuild = 120;
/// if (minVersion.isSatisfied(currentBuild)) {
///   // Enable new feature
///   showNewFeature();
/// }
/// ```
///
/// ### JSON Configuration
/// ```dart
/// // Load version constraints from server/config
/// final json = {
///   'buildNumber': 150,
///   'condition': '>=',
///   // Platform-specific overrides
///   'buildNumber_ios': 155,
///   'buildNumber_android': 145,
/// };
///
/// final version = StacVersion.fromJson(json);
/// ```
///
/// ### Feature Gate Example
/// ```dart
/// class FeatureManager {
///   static bool isNewUIEnabled(int appBuildNumber) {
///     final requirement = StacVersion(
///       buildNumber: 200,
///       condition: StacConditionVersion.greaterThanOrEqual,
///     );
///     return requirement.isSatisfied(appBuildNumber);
///   }
/// }
/// ```
///
/// ## Use Cases
///
/// ### 1. **Progressive Feature Rollout**
/// Deploy features gradually by setting minimum version requirements:
/// ```dart
/// final premiumFeatureGate = StacVersion(
///   buildNumber: 300,
///   condition: StacConditionVersion.greaterThan,
/// );
/// ```
///
/// ### 2. **Deprecation Management**
/// Handle deprecated features with maximum version limits:
/// ```dart
/// final legacyAPIGate = StacVersion(
///   buildNumber: 250,
///   condition: StacConditionVersion.lessThanOrEqual,
/// );
/// ```
///
/// ### 3. **A/B Testing**
/// Control experiment participation based on version:
/// ```dart
/// final experimentGroup = StacVersion(
///   buildNumber: 180,
///   condition: StacConditionVersion.equal,
/// );
/// ```
///
/// ### 4. **Emergency Fixes**
/// Quickly disable problematic features:
/// ```dart
/// final emergencyDisable = StacVersion(
///   buildNumber: 195,
///   condition: StacConditionVersion.notEqual,
/// );
/// ```

/// Represents a version constraint with a build number and comparison condition.
///
/// This class encapsulates version requirements that can be evaluated against
/// an application's current build number to determine feature availability
/// or compatibility.
///
/// Example:
/// ```dart
/// final versionGate = StacVersion(
///   buildNumber: 150,
///   condition: StacConditionVersion.greaterThanOrEqual,
/// );
///
/// if (versionGate.isSatisfied(currentAppBuild)) {
///   // Feature is available
/// }
/// ```
class StacVersion {
  /// Creates a new version constraint.
  ///
  /// [buildNumber] is the reference build number for comparison.
  /// [condition] defines how the comparison should be performed.
  const StacVersion({
    required this.buildNumber,
    required this.condition,
  });

  /// The reference build number used for version comparisons.
  final int buildNumber;

  /// The condition that defines how version comparison is performed.
  final StacConditionVersion condition;

  /// Creates a [StacVersion] instance from JSON data.
  ///
  /// Supports platform-specific overrides by checking for keys with
  /// platform suffixes (e.g., 'buildNumber_ios', 'condition_android').
  ///
  /// Example JSON:
  /// ```json
  /// {
  ///   "buildNumber": 100,
  ///   "condition": ">=",
  ///   "buildNumber_ios": 110,
  ///   "buildNumber_android": 95
  /// }
  /// ```
  factory StacVersion.fromJson(Map<String, dynamic> json) {
    return StacVersion(
      buildNumber: toPlatformJson(json, 'buildNumber').toInt(),
      condition: (toPlatformJson(json, 'condition') as String?)
          .toStacConditionVersion(),
    );
  }

  /// Extracts platform-specific values from JSON, falling back to generic keys.
  ///
  /// First attempts to find a platform-specific key (e.g., 'key_ios'),
  /// then falls back to the generic key if not found.
  ///
  /// This enables different version requirements per platform while
  /// maintaining a single configuration source.
  static dynamic toPlatformJson(Map<String, dynamic> json, String key) =>
      json['${key}_${Platform.operatingSystem}'] ?? json[key];
}

/// Defines the available comparison operators for version conditions.
///
/// These operators determine how a [StacVersion] compares an application's
/// build number against the reference build number.
enum StacConditionVersion {
  /// Greater than (>)
  /// App build must be strictly greater than the reference build.
  greaterThan,

  /// Greater than or equal (>=)
  /// App build must be greater than or equal to the reference build.
  greaterThanOrEqual,

  /// Less than (<)
  /// App build must be strictly less than the reference build.
  lessThan,

  /// Less than or equal (<=)
  /// App build must be less than or equal to the reference build.
  lessThanOrEqual,

  /// Equal (==)
  /// App build must exactly match the reference build.
  equal,

  /// Not equal (!=)
  /// App build must not match the reference build.
  notEqual,
}

/// Extension to convert string representations to [StacConditionVersion] enum values.
///
/// Supports standard comparison operators:
/// - '>' -> greaterThan
/// - '>=' -> greaterThanOrEqual
/// - '<' -> lessThan
/// - '<=' -> lessThanOrEqual
/// - '==' -> equal
/// - '!=' -> notEqual
///
/// Defaults to [StacConditionVersion.notEqual] for invalid input.
extension StacConditionVersionX on String? {
  /// Converts a string operator to its corresponding [StacConditionVersion].
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

/// Extension to convert [StacConditionVersion] enum values back to string operators.
///
/// Useful for serialization, logging, or displaying version conditions in UI.
extension StacConditionVersionToStringX on StacConditionVersion {
  /// Returns the string representation of the condition operator.
  String toTypeString() => switch (this) {
        StacConditionVersion.greaterThan => '>',
        StacConditionVersion.greaterThanOrEqual => '>=',
        StacConditionVersion.lessThan => '<',
        StacConditionVersion.lessThanOrEqual => '<=',
        StacConditionVersion.equal => '==',
        StacConditionVersion.notEqual => '!=',
      };
}

/// Extension providing version satisfaction checking functionality.
///
/// This is the core functionality that determines whether a given
/// application build number satisfies the version constraint.
extension StacVersionX on StacVersion {
  /// Determines if the given app build number satisfies this version constraint.
  ///
  /// Returns `true` if [appBuildNumber] is null (indicating no version check required)
  /// or if the build number satisfies the condition relative to the reference build number.
  ///
  /// Examples:
  /// ```dart
  /// final minVersion = StacVersion(buildNumber: 100, condition: StacConditionVersion.greaterThanOrEqual);
  ///
  /// minVersion.isSatisfied(120); // true - 120 >= 100
  /// minVersion.isSatisfied(90);  // false - 90 < 100
  /// minVersion.isSatisfied(null); // true - no version constraint
  /// ```
  ///
  /// [appBuildNumber] The current application's build number to check.
  /// Returns whether the version constraint is satisfied.
  bool isSatisfied(int? appBuildNumber) {
    // If no app build number is provided, assume constraint is satisfied
    if (appBuildNumber == null) {
      return true;
    }

    // Evaluate the condition against the reference build number
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
