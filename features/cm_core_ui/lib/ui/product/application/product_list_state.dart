import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_state.freezed.dart';

@freezed
class ProductListState with _$ProductListState {
  factory ProductListState.initial() = _Initial;
  factory ProductListState.productList({required List<Product> productList}) =
      _ProductList;
  factory ProductListState.failure() = _Failure;
}
