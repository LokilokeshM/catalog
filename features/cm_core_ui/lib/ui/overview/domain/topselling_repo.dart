import 'package:cm_core_ui/ui/overview/domain/topselling_failure.dart';
import 'package:cm_core_ui/ui/overview/domain/topselling_success.dart';
import 'package:freezed_result/freezed_result.dart';

abstract class TopSellingRepo {
  Future<Result<TopSellingSucces, TopSellingFailure>> getProductList();
}
