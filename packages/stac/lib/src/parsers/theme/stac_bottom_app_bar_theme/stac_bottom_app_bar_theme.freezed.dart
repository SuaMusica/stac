// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_bottom_app_bar_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacBottomAppBarTheme {
  String? get color;
  double? get elevation;
  double? get height;
  String? get surfaceTintColor;
  String? get shadowColor;
  StacEdgeInsets? get padding;

  /// Create a copy of StacBottomAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacBottomAppBarThemeCopyWith<StacBottomAppBarTheme> get copyWith =>
      _$StacBottomAppBarThemeCopyWithImpl<StacBottomAppBarTheme>(
          this as StacBottomAppBarTheme, _$identity);

  /// Serializes this StacBottomAppBarTheme to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacBottomAppBarTheme &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, elevation, height,
      surfaceTintColor, shadowColor, padding);

  @override
  String toString() {
    return 'StacBottomAppBarTheme(color: $color, elevation: $elevation, height: $height, surfaceTintColor: $surfaceTintColor, shadowColor: $shadowColor, padding: $padding)';
  }
}

/// @nodoc
abstract mixin class $StacBottomAppBarThemeCopyWith<$Res> {
  factory $StacBottomAppBarThemeCopyWith(StacBottomAppBarTheme value,
          $Res Function(StacBottomAppBarTheme) _then) =
      _$StacBottomAppBarThemeCopyWithImpl;
  @useResult
  $Res call(
      {String? color,
      double? elevation,
      double? height,
      String? surfaceTintColor,
      String? shadowColor,
      StacEdgeInsets? padding});
}

/// @nodoc
class _$StacBottomAppBarThemeCopyWithImpl<$Res>
    implements $StacBottomAppBarThemeCopyWith<$Res> {
  _$StacBottomAppBarThemeCopyWithImpl(this._self, this._then);

  final StacBottomAppBarTheme _self;
  final $Res Function(StacBottomAppBarTheme) _then;

  /// Create a copy of StacBottomAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? elevation = freezed,
    Object? height = freezed,
    Object? surfaceTintColor = freezed,
    Object? shadowColor = freezed,
    Object? padding = freezed,
  }) {
    return _then(_self.copyWith(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacBottomAppBarTheme].
extension StacBottomAppBarThemePatterns on StacBottomAppBarTheme {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_StacBottomAppBarTheme value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacBottomAppBarTheme() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StacBottomAppBarTheme value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacBottomAppBarTheme():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_StacBottomAppBarTheme value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacBottomAppBarTheme() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? color,
            double? elevation,
            double? height,
            String? surfaceTintColor,
            String? shadowColor,
            StacEdgeInsets? padding)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacBottomAppBarTheme() when $default != null:
        return $default(_that.color, _that.elevation, _that.height,
            _that.surfaceTintColor, _that.shadowColor, _that.padding);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? color,
            double? elevation,
            double? height,
            String? surfaceTintColor,
            String? shadowColor,
            StacEdgeInsets? padding)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacBottomAppBarTheme():
        return $default(_that.color, _that.elevation, _that.height,
            _that.surfaceTintColor, _that.shadowColor, _that.padding);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? color,
            double? elevation,
            double? height,
            String? surfaceTintColor,
            String? shadowColor,
            StacEdgeInsets? padding)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacBottomAppBarTheme() when $default != null:
        return $default(_that.color, _that.elevation, _that.height,
            _that.surfaceTintColor, _that.shadowColor, _that.padding);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacBottomAppBarTheme implements StacBottomAppBarTheme {
  const _StacBottomAppBarTheme(
      {this.color,
      this.elevation,
      this.height,
      this.surfaceTintColor,
      this.shadowColor,
      this.padding});
  factory _StacBottomAppBarTheme.fromJson(Map<String, dynamic> json) =>
      _$StacBottomAppBarThemeFromJson(json);

  @override
  final String? color;
  @override
  final double? elevation;
  @override
  final double? height;
  @override
  final String? surfaceTintColor;
  @override
  final String? shadowColor;
  @override
  final StacEdgeInsets? padding;

  /// Create a copy of StacBottomAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacBottomAppBarThemeCopyWith<_StacBottomAppBarTheme> get copyWith =>
      __$StacBottomAppBarThemeCopyWithImpl<_StacBottomAppBarTheme>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacBottomAppBarThemeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacBottomAppBarTheme &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.surfaceTintColor, surfaceTintColor) ||
                other.surfaceTintColor == surfaceTintColor) &&
            (identical(other.shadowColor, shadowColor) ||
                other.shadowColor == shadowColor) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, color, elevation, height,
      surfaceTintColor, shadowColor, padding);

  @override
  String toString() {
    return 'StacBottomAppBarTheme(color: $color, elevation: $elevation, height: $height, surfaceTintColor: $surfaceTintColor, shadowColor: $shadowColor, padding: $padding)';
  }
}

/// @nodoc
abstract mixin class _$StacBottomAppBarThemeCopyWith<$Res>
    implements $StacBottomAppBarThemeCopyWith<$Res> {
  factory _$StacBottomAppBarThemeCopyWith(_StacBottomAppBarTheme value,
          $Res Function(_StacBottomAppBarTheme) _then) =
      __$StacBottomAppBarThemeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? color,
      double? elevation,
      double? height,
      String? surfaceTintColor,
      String? shadowColor,
      StacEdgeInsets? padding});
}

/// @nodoc
class __$StacBottomAppBarThemeCopyWithImpl<$Res>
    implements _$StacBottomAppBarThemeCopyWith<$Res> {
  __$StacBottomAppBarThemeCopyWithImpl(this._self, this._then);

  final _StacBottomAppBarTheme _self;
  final $Res Function(_StacBottomAppBarTheme) _then;

  /// Create a copy of StacBottomAppBarTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? color = freezed,
    Object? elevation = freezed,
    Object? height = freezed,
    Object? surfaceTintColor = freezed,
    Object? shadowColor = freezed,
    Object? padding = freezed,
  }) {
    return _then(_StacBottomAppBarTheme(
      color: freezed == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      surfaceTintColor: freezed == surfaceTintColor
          ? _self.surfaceTintColor
          : surfaceTintColor // ignore: cast_nullable_to_non_nullable
              as String?,
      shadowColor: freezed == shadowColor
          ? _self.shadowColor
          : shadowColor // ignore: cast_nullable_to_non_nullable
              as String?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as StacEdgeInsets?,
    ));
  }
}

// dart format on
