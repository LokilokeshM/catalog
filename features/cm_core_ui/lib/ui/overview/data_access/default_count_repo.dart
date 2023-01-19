import 'package:cm_core_ui/ui/overview/domain/count_failure.dart';
import 'package:cm_core_ui/ui/overview/domain/count_repo.dart';
import 'package:cm_core_ui/ui/overview/infrastructure/count_api.dart';
import 'package:freezed_result/src/result.dart';
import 'package:cm_core_ui/ui/overview/domain/count_success.dart';

class DefaultCountRepo extends CountRepo {
  final CountApi api;

  DefaultCountRepo(this.api);
  @override
  Future<Result<CountSuccess, CountFailure>> getCustomerCount() async {
    final CommonResponse = await api.getCustomerCount();
    if (CommonResponse.error != null) {
      return Result.failure(CountFailure());
    }
    if (CommonResponse.response != null) {
      return Result.success(
          CountSuccess(count: CommonResponse.response!.count));
    }
    return Result.failure(CountFailure());
  }

  @override
  Future<Result<CountSuccess, CountFailure>> getOrderCount() async {
    final CommonResponse = await api.getOrderCount();
    if (CommonResponse.error != null) {
      return Result.failure(CountFailure());
    }
    if (CommonResponse.response != null) {
      return Result.success(
          CountSuccess(count: CommonResponse.response!.count));
    }
    return Result.failure(CountFailure());
  }

  @override
  Future<Result<CountSuccess, CountFailure>> getProductCount() async {
    final CommonResponse = await api.getProductCount();
    if (CommonResponse.error != null) {
      return Result.failure(CountFailure());
    }
    if (CommonResponse.response != null) {
      return Result.success(
          CountSuccess(count: CommonResponse.response!.count));
    }
    return Result.failure(CountFailure());
  }
}
