import 'package:cm_core_ui/ui/product/domain/product_repo.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:cm_core_ui/ui/product/application/product_data_state.dart';
import 'package:cm_core_ui/ui/product/application/product_useCase.dart';

class ProductLogic extends ProductUC {
  ProductLogic(this.repo) : super(ProductDataState.initial());
  ProductRepo repo;
  @override
  Future<void> addProduct(Product product) async {
    final result = await repo.addProduct(product);
    result.when(success: (value) {
      state = ProductDataState.success(value.successMessage);
    }, failure: (value) {
      state = ProductDataState.failure(value.failureMessage);
    });
  }

  @override
  Future<void> deleteProduct(int id) async {
    final result = await repo.deleteProduct(id);
    result.when(success: (value) {
      state = ProductDataState.success(value.successMessage);
    }, failure: (value) {
      state = ProductDataState.failure(value.failureMessage);
    });
  }

  @override
  Future<void> updateProduct(int id, Product product) async {
    final result = await repo.updateProduct(id, product);
    result.when(success: (value) {
      state = ProductDataState.success(value.successMessage);
    }, failure: (value) {
      state = ProductDataState.failure(value.failureMessage);
    });
  }

  @override
  Future<void> viewProduct(Product product) async {
    state = ProductDataState.data(products: product);
  }
}
