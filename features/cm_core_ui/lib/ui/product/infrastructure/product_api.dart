import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:cm_network/entity/common_response.dart';

abstract class ProductApi {
  Future<CommonResponse<Product>> post(Product addProductRequest);
  Future<CommonResponse<Product>> put(int id, Product addProductRequest);
  Future<CommonResponse> delete(int id);
}
