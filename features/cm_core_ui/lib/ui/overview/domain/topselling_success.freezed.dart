// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topselling_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopSellingSucces {
  List<Product>? get productList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopSellingSuccesCopyWith<TopSellingSucces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSellingSuccesCopyWith<$Res> {
  factory $TopSellingSuccesCopyWith(
          TopSellingSucces value, $Res Function(TopSellingSucces) then) =
      _$TopSellingSuccesCopyWithImpl<$Res, TopSellingSucces>;
  @useResult
  $Res call({List<Product>? productList});
}

/// @nodoc
class _$TopSellingSuccesCopyWithImpl<$Res, $Val extends TopSellingSucces>
    implements $TopSellingSuccesCopyWith<$Res> {
  _$TopSellingSuccesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_value.copyWith(
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopSellingSuccesCopyWith<$Res>
    implements $TopSellingSuccesCopyWith<$Res> {
  factory _$$_TopSellingSuccesCopyWith(
          _$_TopSellingSucces value, $Res Function(_$_TopSellingSucces) then) =
      __$$_TopSellingSuccesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? productList});
}

/// @nodoc
class __$$_TopSellingSuccesCopyWithImpl<$Res>
    extends _$TopSellingSuccesCopyWithImpl<$Res, _$_TopSellingSucces>
    implements _$$_TopSellingSuccesCopyWith<$Res> {
  __$$_TopSellingSuccesCopyWithImpl(
      _$_TopSellingSucces _value, $Res Function(_$_TopSellingSucces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = freezed,
  }) {
    return _then(_$_TopSellingSucces(
      productList: freezed == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$_TopSellingSucces extends _TopSellingSucces {
  _$_TopSellingSucces({required final List<Product>? productList})
      : _productList = productList,
        super._();

  final List<Product>? _productList;
  @override
  List<Product>? get productList {
    final value = _productList;
    if (value == null) return null;
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopSellingSucces(productList: $productList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopSellingSucces &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopSellingSuccesCopyWith<_$_TopSellingSucces> get copyWith =>
      __$$_TopSellingSuccesCopyWithImpl<_$_TopSellingSucces>(this, _$identity);
}

abstract class _TopSellingSucces extends TopSellingSucces {
  factory _TopSellingSucces({required final List<Product>? productList}) =
      _$_TopSellingSucces;
  _TopSellingSucces._() : super._();

  @override
  List<Product>? get productList;
  @override
  @JsonKey(ignore: true)
  _$$_TopSellingSuccesCopyWith<_$_TopSellingSucces> get copyWith =>
      throw _privateConstructorUsedError;
}
