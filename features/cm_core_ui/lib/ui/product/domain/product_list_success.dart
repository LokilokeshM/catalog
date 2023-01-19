import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_success.freezed.dart';

@freezed
class ProductListSuccess with _$ProductListSuccess {
  factory ProductListSuccess({required List<Product> product}) =
      _ProductListSuccess;
  const ProductListSuccess._();
}
