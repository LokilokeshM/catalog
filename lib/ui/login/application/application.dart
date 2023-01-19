import 'package:catalogue_management/ui/login/application/login_logic.dart';
import 'package:catalogue_management/ui/login/application/login_state.dart';
import 'package:catalogue_management/ui/login/application/login_use_cases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_access/data_access.dart';

final loginProvider =
    StateNotifierProvider.autoDispose<LoginUseCase, LoginState>(
        (ref) => LoginLogic(repo: ref.watch(loginRepoProvider)));
