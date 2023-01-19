import 'package:cm_core_ui/ui/overview/domain/count_failure.dart';
import 'package:cm_core_ui/ui/overview/domain/count_success.dart';
import 'package:freezed_result/freezed_result.dart';

abstract class CountRepo {
  Future<Result<CountSuccess, CountFailure>> getOrderCount();
  Future<Result<CountSuccess, CountFailure>> getProductCount();
  Future<Result<CountSuccess, CountFailure>> getCustomerCount();
}
