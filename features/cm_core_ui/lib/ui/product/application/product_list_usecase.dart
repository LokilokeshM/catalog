import 'package:cm_core_ui/ui/product/application/product_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ProductListUseCase extends StateNotifier<ProductListState> {
  ProductListUseCase(super.state);
  Future<void> getProductListPublishedStatus({required String publishedStatus});
  Future<void> getProductListStatus({String status = "any"});

  Future<void> tabSelected({required int index});
}
