import 'package:catalogue_management/ui/login/application/login_state.dart';
import 'package:catalogue_management/ui/login/application/login_use_cases.dart';
import 'package:catalogue_management/ui/login/domain/error_response.dart';
import 'package:catalogue_management/ui/login/domain/login_repo.dart';
import 'package:cm_common/global.dart';
import 'package:cm_network_implementation/entity_helper/login_body.dart';

import '../domain/login_success.dart';

class LoginLogic extends LoginUseCase {
  LoginLogic({required this.repo}) : super(const LoginState.initial());
  LoginRepo repo;
  @override
  Future<void> submitLogin({required String email}) async {
    final result = await repo.login(body: LoginBody(email: "admin@test.com"));
    result.when(success: (LoginSuccess value) {
      Global.getInstance().email = email;
      state = const LoginState.success();
    }, failure: (ErrorResponse value) {
      state = const LoginState.failure();
    });
  }
}
