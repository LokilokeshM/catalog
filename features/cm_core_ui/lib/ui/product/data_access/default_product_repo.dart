import 'package:cm_core_ui/ui/product/domain/product_failure.dart';
import 'package:cm_core_ui/ui/product/domain/product_repo.dart';
import 'package:cm_core_ui/ui/product/domain/product_success.dart';
import 'package:cm_core_ui/ui/product/infrastructure/product_api.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_result/freezed_result.dart';

class DefaultProductRepo extends ProductRepo {
  DefaultProductRepo(this.api);
  ProductApi api;
  @override
  Future<Result<ProductSuccess, ProductFailure>> addProduct(
      Product product) async {
    try {
      final commonResponse = await api.post(product);
      if (commonResponse.error != null) {
        return Result.failure(ProductFailure(
            failureMessage: commonResponse.error!.errorMessage ?? ""));
      }
      if (commonResponse.response != null) {
        return Result.success(
            ProductSuccess(successMessage: "Product Added Successful"));
      }
      return Result.failure(
          ProductFailure(failureMessage: "Something Went Wrong"));
    } catch (e) {
      return Result.failure(
          ProductFailure(failureMessage: "Something Went Wrong"));
    }
  }

  @override
  Future<Result<ProductSuccess, ProductFailure>> deleteProduct(int id) async {
    try {
      final commonResponse = await api.delete(id);
      if (commonResponse.error != null) {
        return Result.failure(ProductFailure(
            failureMessage: commonResponse.error!.errorMessage ?? ""));
      }
      if (commonResponse.response != null) {
        return Result.success(
            ProductSuccess(successMessage: "Product Deleted Successful"));
      }
      return Result.failure(
          ProductFailure(failureMessage: "Something Went Wrong"));
    } catch (e) {
      return Result.failure(
          ProductFailure(failureMessage: "Something Went Wrong"));
    }
  }

  @override
  Future<Result<ProductSuccess, ProductFailure>> updateProduct(
      int id, Product product) async {
    try {
      final commonResponse = await api.put(id, product);
      if (commonResponse.error != null) {
        return Result.failure(ProductFailure(
            failureMessage: commonResponse.error!.errorMessage ?? ""));
      }
      if (commonResponse.response != null) {
        return Result.success(
            ProductSuccess(successMessage: "Product Updated Successful"));
      }
      return Result.failure(
          ProductFailure(failureMessage: "Something Went Wrong"));
    } catch (e) {
      return Result.failure(
          ProductFailure(failureMessage: "Something Went Wrong"));
    }
  }
}
