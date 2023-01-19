import 'package:cm_network/api_basic.dart';
import 'package:cm_network/api_config.dart';
import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/app/cm_app_api.dart';
import 'package:cm_network_implementation/entity/login_response.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';
import 'package:dio/dio.dart';
import '../../entity/count_entity.dart';
import '../../entity/order_list_response.dart';
import '../../entity/product_list_response.dart';
import '../../entity/product_collect_list.dart';
import '../../entity/product_image_list.dart';
import '../../entity_helper/add_product_request_body.dart';
import 'cm_app_client.dart';

class CMAppAPIClient extends CMAppClient with APIBasic {
  Dio _getAppDio() {
    final dio = getDio();
    return dio;
  }

  CMAppApis getApi() => CMAppApis(_getAppDio(), baseUrl: ApiConfig.apiBaseUrl);
  CMAppApis loginApi() => CMAppApis(_getAppDio(), baseUrl: ApiConfig.loginUrl);

  @override
  Future<CommonResponse<ProductListResponse>> getProductDetails() =>
      requestCallWithDetails((_) => getApi().getProductDetails());

  @override
  Future<CommonResponse<LoginResponse>> login(LoginBody body) =>
      requestCallWithDetails((_) => loginApi().login(
          body, "Basic YWFya2luZC50ZWNoQGFhcmRhZS5jb206QWFya2luZDEyMyE="));

  @override
  Future<CommonResponse<ProductCollectsList>> getCollectsListDetails(
          int productId) =>
      requestCallWithDetails((_) => getApi().getCollectsListDetails(productId));

  @override
  Future<CommonResponse<ProductImageList>> getProductImageList(int productId) =>
      requestCallWithDetails((_) => getApi().getProductImageList(productId));

  @override
  Future<CommonResponse<Product>> addProduct(Product addProductRequest) =>
      requestCallWithDetails((_) => getApi().addProduct(addProductRequest));

  @override
  Future<CommonResponse> deleteProduct(int id) =>
      requestCallWithDetails((_) => getApi().deleteProduct(id));

  @override
  Future<CommonResponse<Product>> updateProduct(
          int id, Product addProductRequest) =>
      requestCallWithDetails(
          (_) => getApi().updateProduct(id, addProductRequest));

  @override
  Future<CommonResponse<OrderList>> getOrderListStatus({String? status}) =>
      requestCallWithDetails(
          (_) => getApi().getOrderListStatus(status: status ?? "?status=any"));
  @override
  Future<CommonResponse<OrderList>> getOrderListFinancialStatus(
          {String? financialStatus}) =>
      requestCallWithDetails((_) => getApi().getOrderListFinancialStatus(
          financialStatus: financialStatus ?? "?financialStatus=any"));

  @override
  Future<CommonResponse<CountEntity>> getCustomerCount() =>
      requestCallWithDetails((_) => getApi().getCustomerCount());

  @override
  Future<CommonResponse<CountEntity>> getOrderCount() =>
      requestCallWithDetails((_) => getApi().getOrderCount());

  @override
  Future<CommonResponse<CountEntity>> getProductCount() =>
      requestCallWithDetails((_) => getApi().getProductCount());

  @override
  Future<CommonResponse<ProductListResponse>> getProductListPublishedStatus(
          {required String publishedStatus}) =>
      requestCallWithDetails(
          (_) => getApi().getProductListPublishedStatus(publishedStatus));

  @override
  Future<CommonResponse<ProductListResponse>> getProductListStatus(
          {required String status}) =>
      requestCallWithDetails((_) => getApi().getProductListStatus(status));
}
