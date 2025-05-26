// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacVersion _$StacVersionFromJson(Map<String, dynamic> json) {
  return _StacVersion.fromJson(json);
}

/// @nodoc
mixin _$StacVersion {
  String get versionCode =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: StacVersion.fromJsonCondition)
  StacConditionVersion get condition => throw _privateConstructorUsedError;

  /// Serializes this StacVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacVersionCopyWith<StacVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacVersionCopyWith<$Res> {
  factory $StacVersionCopyWith(
          StacVersion value, $Res Function(StacVersion) then) =
      _$StacVersionCopyWithImpl<$Res, StacVersion>;
  @useResult
  $Res call(
      {String versionCode,
      @JsonKey(fromJson: StacVersion.fromJsonCondition)
      StacConditionVersion condition});
}

/// @nodoc
class _$StacVersionCopyWithImpl<$Res, $Val extends StacVersion>
    implements $StacVersionCopyWith<$Res> {
  _$StacVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionCode = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as StacConditionVersion,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacVersionImplCopyWith<$Res>
    implements $StacVersionCopyWith<$Res> {
  factory _$$StacVersionImplCopyWith(
          _$StacVersionImpl value, $Res Function(_$StacVersionImpl) then) =
      __$$StacVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String versionCode,
      @JsonKey(fromJson: StacVersion.fromJsonCondition)
      StacConditionVersion condition});
}

/// @nodoc
class __$$StacVersionImplCopyWithImpl<$Res>
    extends _$StacVersionCopyWithImpl<$Res, _$StacVersionImpl>
    implements _$$StacVersionImplCopyWith<$Res> {
  __$$StacVersionImplCopyWithImpl(
      _$StacVersionImpl _value, $Res Function(_$StacVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionCode = null,
    Object? condition = null,
  }) {
    return _then(_$StacVersionImpl(
      versionCode: null == versionCode
          ? _value.versionCode
          : versionCode // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as StacConditionVersion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacVersionImpl implements _StacVersion {
  const _$StacVersionImpl(
      {required this.versionCode,
      @JsonKey(fromJson: StacVersion.fromJsonCondition)
      required this.condition});

  factory _$StacVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacVersionImplFromJson(json);

  @override
  final String versionCode;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: StacVersion.fromJsonCondition)
  final StacConditionVersion condition;

  @override
  String toString() {
    return 'StacVersion(versionCode: $versionCode, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacVersionImpl &&
            (identical(other.versionCode, versionCode) ||
                other.versionCode == versionCode) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, versionCode, condition);

  /// Create a copy of StacVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacVersionImplCopyWith<_$StacVersionImpl> get copyWith =>
      __$$StacVersionImplCopyWithImpl<_$StacVersionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacVersionImplToJson(
      this,
    );
  }
}

abstract class _StacVersion implements StacVersion {
  const factory _StacVersion(
      {required final String versionCode,
      @JsonKey(fromJson: StacVersion.fromJsonCondition)
      required final StacConditionVersion condition}) = _$StacVersionImpl;

  factory _StacVersion.fromJson(Map<String, dynamic> json) =
      _$StacVersionImpl.fromJson;

  @override
  String get versionCode; // ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: StacVersion.fromJsonCondition)
  StacConditionVersion get condition;

  /// Create a copy of StacVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacVersionImplCopyWith<_$StacVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
