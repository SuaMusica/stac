// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_material_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacMaterialColor {
  String get primary;
  String get shade50;
  String get shade100;
  String get shade200;
  String get shade300;
  String get shade400;
  String get shade500;
  String get shade600;
  String get shade700;
  String get shade800;
  String get shade900;

  /// Create a copy of StacMaterialColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<StacMaterialColor> get copyWith =>
      _$StacMaterialColorCopyWithImpl<StacMaterialColor>(
          this as StacMaterialColor, _$identity);

  /// Serializes this StacMaterialColor to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacMaterialColor &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.shade50, shade50) || other.shade50 == shade50) &&
            (identical(other.shade100, shade100) ||
                other.shade100 == shade100) &&
            (identical(other.shade200, shade200) ||
                other.shade200 == shade200) &&
            (identical(other.shade300, shade300) ||
                other.shade300 == shade300) &&
            (identical(other.shade400, shade400) ||
                other.shade400 == shade400) &&
            (identical(other.shade500, shade500) ||
                other.shade500 == shade500) &&
            (identical(other.shade600, shade600) ||
                other.shade600 == shade600) &&
            (identical(other.shade700, shade700) ||
                other.shade700 == shade700) &&
            (identical(other.shade800, shade800) ||
                other.shade800 == shade800) &&
            (identical(other.shade900, shade900) ||
                other.shade900 == shade900));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      primary,
      shade50,
      shade100,
      shade200,
      shade300,
      shade400,
      shade500,
      shade600,
      shade700,
      shade800,
      shade900);

  @override
  String toString() {
    return 'StacMaterialColor(primary: $primary, shade50: $shade50, shade100: $shade100, shade200: $shade200, shade300: $shade300, shade400: $shade400, shade500: $shade500, shade600: $shade600, shade700: $shade700, shade800: $shade800, shade900: $shade900)';
  }
}

/// @nodoc
abstract mixin class $StacMaterialColorCopyWith<$Res> {
  factory $StacMaterialColorCopyWith(
          StacMaterialColor value, $Res Function(StacMaterialColor) _then) =
      _$StacMaterialColorCopyWithImpl;
  @useResult
  $Res call(
      {String primary,
      String shade50,
      String shade100,
      String shade200,
      String shade300,
      String shade400,
      String shade500,
      String shade600,
      String shade700,
      String shade800,
      String shade900});
}

/// @nodoc
class _$StacMaterialColorCopyWithImpl<$Res>
    implements $StacMaterialColorCopyWith<$Res> {
  _$StacMaterialColorCopyWithImpl(this._self, this._then);

  final StacMaterialColor _self;
  final $Res Function(StacMaterialColor) _then;

  /// Create a copy of StacMaterialColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? shade50 = null,
    Object? shade100 = null,
    Object? shade200 = null,
    Object? shade300 = null,
    Object? shade400 = null,
    Object? shade500 = null,
    Object? shade600 = null,
    Object? shade700 = null,
    Object? shade800 = null,
    Object? shade900 = null,
  }) {
    return _then(_self.copyWith(
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      shade50: null == shade50
          ? _self.shade50
          : shade50 // ignore: cast_nullable_to_non_nullable
              as String,
      shade100: null == shade100
          ? _self.shade100
          : shade100 // ignore: cast_nullable_to_non_nullable
              as String,
      shade200: null == shade200
          ? _self.shade200
          : shade200 // ignore: cast_nullable_to_non_nullable
              as String,
      shade300: null == shade300
          ? _self.shade300
          : shade300 // ignore: cast_nullable_to_non_nullable
              as String,
      shade400: null == shade400
          ? _self.shade400
          : shade400 // ignore: cast_nullable_to_non_nullable
              as String,
      shade500: null == shade500
          ? _self.shade500
          : shade500 // ignore: cast_nullable_to_non_nullable
              as String,
      shade600: null == shade600
          ? _self.shade600
          : shade600 // ignore: cast_nullable_to_non_nullable
              as String,
      shade700: null == shade700
          ? _self.shade700
          : shade700 // ignore: cast_nullable_to_non_nullable
              as String,
      shade800: null == shade800
          ? _self.shade800
          : shade800 // ignore: cast_nullable_to_non_nullable
              as String,
      shade900: null == shade900
          ? _self.shade900
          : shade900 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacMaterialColor].
extension StacMaterialColorPatterns on StacMaterialColor {
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
    TResult Function(_StacMaterialColor value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacMaterialColor() when $default != null:
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
    TResult Function(_StacMaterialColor value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialColor():
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
    TResult? Function(_StacMaterialColor value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialColor() when $default != null:
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
            String primary,
            String shade50,
            String shade100,
            String shade200,
            String shade300,
            String shade400,
            String shade500,
            String shade600,
            String shade700,
            String shade800,
            String shade900)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacMaterialColor() when $default != null:
        return $default(
            _that.primary,
            _that.shade50,
            _that.shade100,
            _that.shade200,
            _that.shade300,
            _that.shade400,
            _that.shade500,
            _that.shade600,
            _that.shade700,
            _that.shade800,
            _that.shade900);
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
            String primary,
            String shade50,
            String shade100,
            String shade200,
            String shade300,
            String shade400,
            String shade500,
            String shade600,
            String shade700,
            String shade800,
            String shade900)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialColor():
        return $default(
            _that.primary,
            _that.shade50,
            _that.shade100,
            _that.shade200,
            _that.shade300,
            _that.shade400,
            _that.shade500,
            _that.shade600,
            _that.shade700,
            _that.shade800,
            _that.shade900);
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
            String primary,
            String shade50,
            String shade100,
            String shade200,
            String shade300,
            String shade400,
            String shade500,
            String shade600,
            String shade700,
            String shade800,
            String shade900)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacMaterialColor() when $default != null:
        return $default(
            _that.primary,
            _that.shade50,
            _that.shade100,
            _that.shade200,
            _that.shade300,
            _that.shade400,
            _that.shade500,
            _that.shade600,
            _that.shade700,
            _that.shade800,
            _that.shade900);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacMaterialColor implements StacMaterialColor {
  const _StacMaterialColor(
      {required this.primary,
      required this.shade50,
      required this.shade100,
      required this.shade200,
      required this.shade300,
      required this.shade400,
      required this.shade500,
      required this.shade600,
      required this.shade700,
      required this.shade800,
      required this.shade900});
  factory _StacMaterialColor.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialColorFromJson(json);

  @override
  final String primary;
  @override
  final String shade50;
  @override
  final String shade100;
  @override
  final String shade200;
  @override
  final String shade300;
  @override
  final String shade400;
  @override
  final String shade500;
  @override
  final String shade600;
  @override
  final String shade700;
  @override
  final String shade800;
  @override
  final String shade900;

  /// Create a copy of StacMaterialColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacMaterialColorCopyWith<_StacMaterialColor> get copyWith =>
      __$StacMaterialColorCopyWithImpl<_StacMaterialColor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacMaterialColorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacMaterialColor &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.shade50, shade50) || other.shade50 == shade50) &&
            (identical(other.shade100, shade100) ||
                other.shade100 == shade100) &&
            (identical(other.shade200, shade200) ||
                other.shade200 == shade200) &&
            (identical(other.shade300, shade300) ||
                other.shade300 == shade300) &&
            (identical(other.shade400, shade400) ||
                other.shade400 == shade400) &&
            (identical(other.shade500, shade500) ||
                other.shade500 == shade500) &&
            (identical(other.shade600, shade600) ||
                other.shade600 == shade600) &&
            (identical(other.shade700, shade700) ||
                other.shade700 == shade700) &&
            (identical(other.shade800, shade800) ||
                other.shade800 == shade800) &&
            (identical(other.shade900, shade900) ||
                other.shade900 == shade900));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      primary,
      shade50,
      shade100,
      shade200,
      shade300,
      shade400,
      shade500,
      shade600,
      shade700,
      shade800,
      shade900);

  @override
  String toString() {
    return 'StacMaterialColor(primary: $primary, shade50: $shade50, shade100: $shade100, shade200: $shade200, shade300: $shade300, shade400: $shade400, shade500: $shade500, shade600: $shade600, shade700: $shade700, shade800: $shade800, shade900: $shade900)';
  }
}

/// @nodoc
abstract mixin class _$StacMaterialColorCopyWith<$Res>
    implements $StacMaterialColorCopyWith<$Res> {
  factory _$StacMaterialColorCopyWith(
          _StacMaterialColor value, $Res Function(_StacMaterialColor) _then) =
      __$StacMaterialColorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String primary,
      String shade50,
      String shade100,
      String shade200,
      String shade300,
      String shade400,
      String shade500,
      String shade600,
      String shade700,
      String shade800,
      String shade900});
}

/// @nodoc
class __$StacMaterialColorCopyWithImpl<$Res>
    implements _$StacMaterialColorCopyWith<$Res> {
  __$StacMaterialColorCopyWithImpl(this._self, this._then);

  final _StacMaterialColor _self;
  final $Res Function(_StacMaterialColor) _then;

  /// Create a copy of StacMaterialColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? primary = null,
    Object? shade50 = null,
    Object? shade100 = null,
    Object? shade200 = null,
    Object? shade300 = null,
    Object? shade400 = null,
    Object? shade500 = null,
    Object? shade600 = null,
    Object? shade700 = null,
    Object? shade800 = null,
    Object? shade900 = null,
  }) {
    return _then(_StacMaterialColor(
      primary: null == primary
          ? _self.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String,
      shade50: null == shade50
          ? _self.shade50
          : shade50 // ignore: cast_nullable_to_non_nullable
              as String,
      shade100: null == shade100
          ? _self.shade100
          : shade100 // ignore: cast_nullable_to_non_nullable
              as String,
      shade200: null == shade200
          ? _self.shade200
          : shade200 // ignore: cast_nullable_to_non_nullable
              as String,
      shade300: null == shade300
          ? _self.shade300
          : shade300 // ignore: cast_nullable_to_non_nullable
              as String,
      shade400: null == shade400
          ? _self.shade400
          : shade400 // ignore: cast_nullable_to_non_nullable
              as String,
      shade500: null == shade500
          ? _self.shade500
          : shade500 // ignore: cast_nullable_to_non_nullable
              as String,
      shade600: null == shade600
          ? _self.shade600
          : shade600 // ignore: cast_nullable_to_non_nullable
              as String,
      shade700: null == shade700
          ? _self.shade700
          : shade700 // ignore: cast_nullable_to_non_nullable
              as String,
      shade800: null == shade800
          ? _self.shade800
          : shade800 // ignore: cast_nullable_to_non_nullable
              as String,
      shade900: null == shade900
          ? _self.shade900
          : shade900 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
