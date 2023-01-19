import 'package:cm_network_implementation/app/api_client/cm_api_client.dart';
import 'package:cm_network_implementation/app/api_client/cm_app_client.dart';

class CMAppProvider {
  static CMAppClient getAppAPI() {
    return CMAppAPIClient();
  }
}
