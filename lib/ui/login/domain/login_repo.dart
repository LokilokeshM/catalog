import '../domain/error_response.dart';
import '../domain/login_success.dart';
import 'package:freezed_result/freezed_result.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';

abstract class LoginRepo {
  Future<Result<LoginSuccess, ErrorResponse>> login({required LoginBody body});
}
