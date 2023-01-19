import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:cm_core_ui/ui/product/application/product_data_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ProductUC extends StateNotifier<ProductDataState> {
  ProductUC(super.state);
  Future<void> viewProduct(Product product);
  Future<void> addProduct(Product product);
  Future<void> updateProduct(int id, Product product);
  Future<void> deleteProduct(int id);
}
