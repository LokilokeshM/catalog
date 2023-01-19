import 'package:cm_common/generated/l10n.dart';
import 'package:cm_network_implementation/api_client_config.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:cm_network/entity/common_response.dart';

import 'product_list_api.dart';

class RawProductListApi extends ProductListApi {
  @override
  Future<CommonResponse<ProductListResponse>> getProductListPublishedStatus(
      {String publishedStatus = "any"}) async {
    return await APIClientConfig.getAppAPI()
        .getProductListPublishedStatus(publishedStatus: publishedStatus);
  }

  @override
  Future<CommonResponse<ProductListResponse>> getProductListStatus(
      {String status = "any"}) async {
    return await APIClientConfig.getAppAPI()
        .getProductListStatus(status: status);
  }
}
