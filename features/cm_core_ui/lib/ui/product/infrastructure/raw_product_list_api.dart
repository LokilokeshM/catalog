import 'package:cm_network_implementation/api_client_config.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';

import 'package:cm_network/entity/common_response.dart';

import 'product_api.dart';

class RawProductApi extends ProductApi {
  @override
  Future<CommonResponse<Product>> post(Product addProductRequest) async {
    return await APIClientConfig.getAppAPI().addProduct(addProductRequest);
  }

  @override
  Future<CommonResponse> delete(int id) async {
    return await APIClientConfig.getAppAPI().deleteProduct(id);
  }

  @override
  Future<CommonResponse<Product>> put(int id, Product addProductRequest) async {
    return await APIClientConfig.getAppAPI()
        .updateProduct(id, addProductRequest);
  }
}
