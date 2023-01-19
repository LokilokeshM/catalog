import 'package:cm_core_ui/ui/overview/domain/topselling_failure.dart';
import 'package:cm_core_ui/ui/overview/domain/topselling_repo.dart';
import 'package:cm_core_ui/ui/overview/infrastructure/topselling_api.dart';
import 'package:freezed_result/src/result.dart';
import 'package:cm_core_ui/ui/overview/domain/topselling_success.dart';

class DefaultTopSellingRepo extends TopSellingRepo {
  DefaultTopSellingRepo(this.api);
  final TopSellingApi api;
  @override
  Future<Result<TopSellingSucces, TopSellingFailure>> getProductList() async {
    final commonResponse = await api.get();
    if (commonResponse.error != null) {
      return Result.failure(TopSellingFailure());
    }
    if (commonResponse.response != null) {
      if (commonResponse.response!.products != null) {
        return Result.success(
            TopSellingSucces(productList: commonResponse.response!.products));
      } else {
        return Result.failure(TopSellingFailure());
      }
    }
    return Result.failure(TopSellingFailure());
  }
}
