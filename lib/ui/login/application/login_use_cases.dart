import 'package:catalogue_management/ui/login/application/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LoginUseCase extends StateNotifier<LoginState> {
  LoginUseCase(LoginState state) : super(state);
  Future<void> submitLogin({required String email});
}
