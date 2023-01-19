// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListSuccess {
  List<Product> get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListSuccessCopyWith<ProductListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListSuccessCopyWith<$Res> {
  factory $ProductListSuccessCopyWith(
          ProductListSuccess value, $Res Function(ProductListSuccess) then) =
      _$ProductListSuccessCopyWithImpl<$Res, ProductListSuccess>;
  @useResult
  $Res call({List<Product> product});
}

/// @nodoc
class _$ProductListSuccessCopyWithImpl<$Res, $Val extends ProductListSuccess>
    implements $ProductListSuccessCopyWith<$Res> {
  _$ProductListSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListSuccessCopyWith<$Res>
    implements $ProductListSuccessCopyWith<$Res> {
  factory _$$_ProductListSuccessCopyWith(_$_ProductListSuccess value,
          $Res Function(_$_ProductListSuccess) then) =
      __$$_ProductListSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> product});
}

/// @nodoc
class __$$_ProductListSuccessCopyWithImpl<$Res>
    extends _$ProductListSuccessCopyWithImpl<$Res, _$_ProductListSuccess>
    implements _$$_ProductListSuccessCopyWith<$Res> {
  __$$_ProductListSuccessCopyWithImpl(
      _$_ProductListSuccess _value, $Res Function(_$_ProductListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_ProductListSuccess(
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductListSuccess extends _ProductListSuccess {
  _$_ProductListSuccess({required final List<Product> product})
      : _product = product,
        super._();

  final List<Product> _product;
  @override
  List<Product> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductListSuccess(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductListSuccess &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListSuccessCopyWith<_$_ProductListSuccess> get copyWith =>
      __$$_ProductListSuccessCopyWithImpl<_$_ProductListSuccess>(
          this, _$identity);
}

abstract class _ProductListSuccess extends ProductListSuccess {
  factory _ProductListSuccess({required final List<Product> product}) =
      _$_ProductListSuccess;
  _ProductListSuccess._() : super._();

  @override
  List<Product> get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductListSuccessCopyWith<_$_ProductListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
