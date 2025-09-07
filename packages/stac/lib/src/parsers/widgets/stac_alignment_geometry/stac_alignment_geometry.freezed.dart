// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_alignment_geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacAlignmentGeometry {
  StacDouble get dx;
  StacDouble get dy;

  /// Create a copy of StacAlignmentGeometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacAlignmentGeometryCopyWith<StacAlignmentGeometry> get copyWith =>
      _$StacAlignmentGeometryCopyWithImpl<StacAlignmentGeometry>(
          this as StacAlignmentGeometry, _$identity);

  /// Serializes this StacAlignmentGeometry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacAlignmentGeometry &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @override
  String toString() {
    return 'StacAlignmentGeometry(dx: $dx, dy: $dy)';
  }
}

/// @nodoc
abstract mixin class $StacAlignmentGeometryCopyWith<$Res> {
  factory $StacAlignmentGeometryCopyWith(StacAlignmentGeometry value,
          $Res Function(StacAlignmentGeometry) _then) =
      _$StacAlignmentGeometryCopyWithImpl;
  @useResult
  $Res call({StacDouble dx, StacDouble dy});
}

/// @nodoc
class _$StacAlignmentGeometryCopyWithImpl<$Res>
    implements $StacAlignmentGeometryCopyWith<$Res> {
  _$StacAlignmentGeometryCopyWithImpl(this._self, this._then);

  final StacAlignmentGeometry _self;
  final $Res Function(StacAlignmentGeometry) _then;

  /// Create a copy of StacAlignmentGeometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_self.copyWith(
      dx: null == dx
          ? _self.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      dy: null == dy
          ? _self.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

/// Adds pattern-matching-related methods to [StacAlignmentGeometry].
extension StacAlignmentGeometryPatterns on StacAlignmentGeometry {
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
    TResult Function(_StacAlignmentGeometry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacAlignmentGeometry() when $default != null:
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
    TResult Function(_StacAlignmentGeometry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAlignmentGeometry():
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
    TResult? Function(_StacAlignmentGeometry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAlignmentGeometry() when $default != null:
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
    TResult Function(StacDouble dx, StacDouble dy)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StacAlignmentGeometry() when $default != null:
        return $default(_that.dx, _that.dy);
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
    TResult Function(StacDouble dx, StacDouble dy) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAlignmentGeometry():
        return $default(_that.dx, _that.dy);
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
    TResult? Function(StacDouble dx, StacDouble dy)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StacAlignmentGeometry() when $default != null:
        return $default(_that.dx, _that.dy);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StacAlignmentGeometry implements StacAlignmentGeometry {
  const _StacAlignmentGeometry({required this.dx, required this.dy});
  factory _StacAlignmentGeometry.fromJson(Map<String, dynamic> json) =>
      _$StacAlignmentGeometryFromJson(json);

  @override
  final StacDouble dx;
  @override
  final StacDouble dy;

  /// Create a copy of StacAlignmentGeometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacAlignmentGeometryCopyWith<_StacAlignmentGeometry> get copyWith =>
      __$StacAlignmentGeometryCopyWithImpl<_StacAlignmentGeometry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacAlignmentGeometryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacAlignmentGeometry &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @override
  String toString() {
    return 'StacAlignmentGeometry(dx: $dx, dy: $dy)';
  }
}

/// @nodoc
abstract mixin class _$StacAlignmentGeometryCopyWith<$Res>
    implements $StacAlignmentGeometryCopyWith<$Res> {
  factory _$StacAlignmentGeometryCopyWith(_StacAlignmentGeometry value,
          $Res Function(_StacAlignmentGeometry) _then) =
      __$StacAlignmentGeometryCopyWithImpl;
  @override
  @useResult
  $Res call({StacDouble dx, StacDouble dy});
}

/// @nodoc
class __$StacAlignmentGeometryCopyWithImpl<$Res>
    implements _$StacAlignmentGeometryCopyWith<$Res> {
  __$StacAlignmentGeometryCopyWithImpl(this._self, this._then);

  final _StacAlignmentGeometry _self;
  final $Res Function(_StacAlignmentGeometry) _then;

  /// Create a copy of StacAlignmentGeometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dx = null,
    Object? dy = null,
  }) {
    return _then(_StacAlignmentGeometry(
      dx: null == dx
          ? _self.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as StacDouble,
      dy: null == dy
          ? _self.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as StacDouble,
    ));
  }
}

// dart format on
