import 'package:flutter/foundation.dart';

/// Canonical platform identifiers supported in JSON "platform" field.
/// Incoming values are normalized (e.g. lowercased) and validated against this list.
const List<String> supportedPlatformStrings = [
  'android',
  'ios',
  'linux',
  'macos',
  'windows',
  'web',
];

/// Returns the current platform as a canonical string (one of [supportedPlatformStrings]).
String currentPlatformString() {
  if (kIsWeb) {
    return 'web';
  }

  return switch (defaultTargetPlatform) {
    TargetPlatform.android => 'android',
    TargetPlatform.iOS => 'ios',
    TargetPlatform.linux => 'linux',
    TargetPlatform.macOS => 'macos',
    TargetPlatform.windows => 'windows',
    _ => 'unknown',
  };
}