import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/entity/count_entity.dart';

abstract class CountApi {
  Future<CommonResponse<CountEntity>> getOrderCount();
  Future<CommonResponse<CountEntity>> getProductCount();
  Future<CommonResponse<CountEntity>> getCustomerCount();
}
