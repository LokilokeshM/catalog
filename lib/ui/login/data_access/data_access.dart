import '../data_access/default_login_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infrastructure/infrastructure.dart';

final loginRepoProvider =
    Provider((ref) => DefaultLoginRepo(ref.watch(createLoginApi)));
