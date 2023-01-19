import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topselling_success.freezed.dart';

@freezed
class TopSellingSucces with _$TopSellingSucces {
  factory TopSellingSucces({required List<Product>? productList}) =
      _TopSellingSucces;
  const TopSellingSucces._();
}
