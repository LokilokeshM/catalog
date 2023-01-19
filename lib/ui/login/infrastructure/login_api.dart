import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';

abstract class LoginApi {
  Future<CommonResponse<dynamic>> post({required LoginBody body});
}
