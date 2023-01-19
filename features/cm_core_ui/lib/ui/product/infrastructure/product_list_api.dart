import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';

abstract class ProductListApi {
  Future<CommonResponse<ProductListResponse>> getProductListStatus(
      {String status = "any"});
  Future<CommonResponse<ProductListResponse>> getProductListPublishedStatus(
      {String publishedStatus = "any"});
}
