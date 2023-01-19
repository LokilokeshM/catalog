import 'package:cm_network/api_config.dart';
import 'package:cm_network_implementation/entity/login_response.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';
import 'package:dio/dio.dart';
import '../entity/count_entity.dart';
import '../entity/product_list_response.dart';
import '../entity/product_collect_list.dart';
import '../entity/product_image_list.dart';
import '../entity_helper/add_product_request_body.dart';
import 'package:retrofit/retrofit.dart';

import '../../entity/order_list_response.dart';
part 'cm_app_api.g.dart';

@RestApi()
abstract class CMAppApis {
  factory CMAppApis(Dio dio, {String baseUrl}) = _CMAppApis;

  @POST("/login")
  Future<HttpResponse<LoginResponse>> login(
      @Body() LoginBody body, @Header("Authorization") String auth);

  @GET(listProductApi)
  Future<HttpResponse<ProductListResponse>> getProductDetails();

  @GET(getCollectList)
  Future<HttpResponse<ProductCollectsList>> getCollectsListDetails(
      @Query("product_id") int productId);

  @GET("$getProductImageListString/{product_id}/images.json?since_id=850703190")
  Future<HttpResponse<ProductImageList>> getProductImageList(
      @Path("product_id") int productId);

  @POST(listProductApi)
  Future<HttpResponse<Product>> addProduct(@Body() Product addProductRequest);

  @DELETE("/products/{id}.json")
  Future<HttpResponse> deleteProduct(@Path() int id);

  @PUT("/products/{id}.json")
  Future<HttpResponse<Product>> updateProduct(
      @Path() int id, @Body() Product addProductRequest);

  @GET("/orders.json")
  Future<HttpResponse<OrderList>> getOrderListStatus(
      {@Query("status") String status = "any"});
  @GET("/orders.json")
  Future<HttpResponse<OrderList>> getOrderListFinancialStatus(
      {@Query("financial_status") String financialStatus = "any"});

  @GET("/customers/$countJson")
  Future<HttpResponse<CountEntity>> getCustomerCount();

  @GET("/orders/$countJson")
  Future<HttpResponse<CountEntity>> getOrderCount();

  @GET("/products/$countJson")
  Future<HttpResponse<CountEntity>> getProductCount();

  @GET(listProductApi)
  Future<HttpResponse<ProductListResponse>> getProductListStatus(
      @Query("status") String status);

  @GET(listProductApi)
  Future<HttpResponse<ProductListResponse>> getProductListPublishedStatus(
      @Query("published_status") String publishedStatus);
}
