import 'package:cm_network/entity/common_response.dart';
import 'package:cm_network_implementation/api_client_config.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';
import 'package:flutter/material.dart';

import '../../../provider/cm_app_provider.dart';
import 'login_api.dart';

class RawLoginApi extends LoginApi {
  @override
  Future<CommonResponse<dynamic>> post({required LoginBody body}) async {
    try {
      return await CMAppProvider.getAppAPI().login(body);
    } catch (e) {
      throw e;
    }
  }
}
