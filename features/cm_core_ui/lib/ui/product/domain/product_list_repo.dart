import 'package:cm_core_ui/ui/product/domain/product_list_failure.dart';
import 'package:cm_core_ui/ui/product/domain/product_list_success.dart';
import 'package:freezed_result/freezed_result.dart';

abstract class ProductListRepo {
  Future<Result<ProductListSuccess, ProductListFailure>>
      getProductListPublishedStatus({required String publishedStatus});
  Future<Result<ProductListSuccess, ProductListFailure>> getProductListStatus(
      {required String status});
}
