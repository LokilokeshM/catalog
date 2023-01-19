// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSuccess {
  String get successMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSuccessCopyWith<ProductSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSuccessCopyWith<$Res> {
  factory $ProductSuccessCopyWith(
          ProductSuccess value, $Res Function(ProductSuccess) then) =
      _$ProductSuccessCopyWithImpl<$Res, ProductSuccess>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class _$ProductSuccessCopyWithImpl<$Res, $Val extends ProductSuccess>
    implements $ProductSuccessCopyWith<$Res> {
  _$ProductSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_value.copyWith(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductSuccessCopyWith<$Res>
    implements $ProductSuccessCopyWith<$Res> {
  factory _$$_ProductSuccessCopyWith(
          _$_ProductSuccess value, $Res Function(_$_ProductSuccess) then) =
      __$$_ProductSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$_ProductSuccessCopyWithImpl<$Res>
    extends _$ProductSuccessCopyWithImpl<$Res, _$_ProductSuccess>
    implements _$$_ProductSuccessCopyWith<$Res> {
  __$$_ProductSuccessCopyWithImpl(
      _$_ProductSuccess _value, $Res Function(_$_ProductSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$_ProductSuccess(
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductSuccess extends _ProductSuccess {
  _$_ProductSuccess({required this.successMessage}) : super._();

  @override
  final String successMessage;

  @override
  String toString() {
    return 'ProductSuccess(successMessage: $successMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSuccess &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductSuccessCopyWith<_$_ProductSuccess> get copyWith =>
      __$$_ProductSuccessCopyWithImpl<_$_ProductSuccess>(this, _$identity);
}

abstract class _ProductSuccess extends ProductSuccess {
  factory _ProductSuccess({required final String successMessage}) =
      _$_ProductSuccess;
  _ProductSuccess._() : super._();

  @override
  String get successMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ProductSuccessCopyWith<_$_ProductSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
