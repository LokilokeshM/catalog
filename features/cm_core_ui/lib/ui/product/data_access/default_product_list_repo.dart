import 'package:cm_core_ui/ui/product/domain/product_list_failure.dart';
import 'package:cm_core_ui/ui/product/domain/product_list_repo.dart';
import 'package:cm_core_ui/ui/product/infrastructure/product_list_api.dart';
import 'package:cm_core_ui/ui/product/domain/product_list_success.dart';
import 'package:freezed_result/freezed_result.dart';

class DefaultProductListRepo extends ProductListRepo {
  DefaultProductListRepo(this.api);
  ProductListApi api;
  @override
  Future<Result<ProductListSuccess, ProductListFailure>>
      getProductListPublishedStatus({required String publishedStatus}) async {
    final commonResponse = await api.getProductListPublishedStatus(
        publishedStatus: publishedStatus);
    if (commonResponse.error != null) {
      return Result.failure(ProductListFailure());
    }
    if (commonResponse.response != null &&
        commonResponse.response!.products != null &&
        commonResponse.response!.products!.isNotEmpty) {
      return Result.success(
          ProductListSuccess(product: commonResponse.response!.products!));
    }
    return Result.failure(ProductListFailure());
  }

  @override
  Future<Result<ProductListSuccess, ProductListFailure>> getProductListStatus(
      {required String status}) async {
    final commonResponse = await api.getProductListStatus(status: status);
    if (commonResponse.error != null) {
      return Result.failure(ProductListFailure());
    }
    if (commonResponse.response != null &&
        commonResponse.response!.products != null &&
        commonResponse.response!.products!.isNotEmpty) {
      return Result.success(
          ProductListSuccess(product: commonResponse.response!.products!));
    }
    return Result.failure(ProductListFailure());
  }
}
