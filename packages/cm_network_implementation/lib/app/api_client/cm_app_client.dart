import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/entity/count_entity.dart';
import 'package:cm_network_implementation/entity/login_response.dart';
import 'package:cm_network_implementation/entity/order_list_response.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:cm_network_implementation/entity/product_collect_list.dart';
import 'package:cm_network_implementation/entity/product_image_list.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';

abstract class CMAppClient {
  Future<CommonResponse<LoginResponse>> login(LoginBody body);
  Future<CommonResponse<ProductListResponse>> getProductDetails();
  Future<CommonResponse<ProductListResponse>> getProductListStatus(
      {required String status});
  Future<CommonResponse<ProductListResponse>> getProductListPublishedStatus(
      {required String publishedStatus});
  Future<CommonResponse<Product>> addProduct(Product addProductRequest);
  Future<CommonResponse<Product>> updateProduct(
      int id, Product addProductRequest);
  Future<CommonResponse> deleteProduct(int id);
  Future<CommonResponse<ProductCollectsList>> getCollectsListDetails(
      int productId);
  Future<CommonResponse<ProductImageList>> getProductImageList(int productId);
  Future<CommonResponse<OrderList>> getOrderListStatus({String? status});
  Future<CommonResponse<OrderList>> getOrderListFinancialStatus(
      {String? financialStatus});
  Future<CommonResponse<CountEntity>> getOrderCount();
  Future<CommonResponse<CountEntity>> getProductCount();
  Future<CommonResponse<CountEntity>> getCustomerCount();
}
