import 'package:cm_core_ui/ui/overview/infrastructure/count_api.dart';
import 'package:cm_network_implementation/entity/count_entity.dart';
import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/api_client_config.dart';

class RawCountApi extends CountApi {
  @override
  Future<CommonResponse<CountEntity>> getCustomerCount() async {
    return await APIClientConfig.getAppAPI().getCustomerCount();
  }

  @override
  Future<CommonResponse<CountEntity>> getOrderCount() async {
    return await APIClientConfig.getAppAPI().getOrderCount();
  }

  @override
  Future<CommonResponse<CountEntity>> getProductCount() async {
    return await APIClientConfig.getAppAPI().getProductCount();
  }
}
