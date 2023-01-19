import 'package:cm_core_ui/ui/overview/infrastructure/topselling_api.dart';
import 'package:cm_network_implementation/api_client_config.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:cm_network/entity/common_response.dart';

class RawTopSellingApi extends TopSellingApi {
  @override
  Future<CommonResponse<ProductListResponse>> get() async {
    return await APIClientConfig.getAppAPI().getProductDetails();
  }
}
