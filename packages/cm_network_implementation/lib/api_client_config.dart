import 'package:cm_network_implementation/app/api_client/cm_app_client.dart';

import 'app/api_client/cm_api_client.dart';

class APIClientConfig {
  static CMAppClient getAppAPI() {
    return CMAppAPIClient();
  }
}
