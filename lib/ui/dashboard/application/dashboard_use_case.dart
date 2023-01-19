import 'package:catalogue_management/ui/dashboard/application/dashboard_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cm_common/enum/enums.dart';

abstract class DashboardUseCase extends StateNotifier<DashboardState> {
  DashboardUseCase(DashboardState state) : super(state);
  Future<void> findAction({required DashboardEnum dashboardEnum});
}
