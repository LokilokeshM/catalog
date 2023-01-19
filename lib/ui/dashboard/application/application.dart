import 'package:catalogue_management/ui/dashboard/application/dashboard_logic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dashboard_use_case.dart';
import 'dashboard_state.dart';

final dashboardScreenProvider =
    StateNotifierProvider.autoDispose<DashboardUseCase, DashboardState>(
        (ref) => DashboardLogic());
