// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductFailure {
  String get failureMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFailureCopyWith<ProductFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFailureCopyWith<$Res> {
  factory $ProductFailureCopyWith(
          ProductFailure value, $Res Function(ProductFailure) then) =
      _$ProductFailureCopyWithImpl<$Res, ProductFailure>;
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class _$ProductFailureCopyWithImpl<$Res, $Val extends ProductFailure>
    implements $ProductFailureCopyWith<$Res> {
  _$ProductFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_value.copyWith(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductFailureCopyWith<$Res>
    implements $ProductFailureCopyWith<$Res> {
  factory _$$_ProductFailureCopyWith(
          _$_ProductFailure value, $Res Function(_$_ProductFailure) then) =
      __$$_ProductFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureMessage});
}

/// @nodoc
class __$$_ProductFailureCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res, _$_ProductFailure>
    implements _$$_ProductFailureCopyWith<$Res> {
  __$$_ProductFailureCopyWithImpl(
      _$_ProductFailure _value, $Res Function(_$_ProductFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureMessage = null,
  }) {
    return _then(_$_ProductFailure(
      failureMessage: null == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductFailure extends _ProductFailure {
  _$_ProductFailure({required this.failureMessage}) : super._();

  @override
  final String failureMessage;

  @override
  String toString() {
    return 'ProductFailure(failureMessage: $failureMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductFailure &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductFailureCopyWith<_$_ProductFailure> get copyWith =>
      __$$_ProductFailureCopyWithImpl<_$_ProductFailure>(this, _$identity);
}

abstract class _ProductFailure extends ProductFailure {
  factory _ProductFailure({required final String failureMessage}) =
      _$_ProductFailure;
  _ProductFailure._() : super._();

  @override
  String get failureMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ProductFailureCopyWith<_$_ProductFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
