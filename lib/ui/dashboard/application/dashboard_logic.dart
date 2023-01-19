import 'package:catalogue_management/ui/dashboard/application/dashboard_state.dart';
import 'package:catalogue_management/ui/dashboard/application/dashboard_use_case.dart';
import 'package:cm_common/enum/enums.dart';

class DashboardLogic extends DashboardUseCase {
  DashboardLogic()
      : super(DashboardState.screen(dashboardEnum: DashboardEnum.OVER_VIEW));

  @override
  Future<void> findAction({required DashboardEnum dashboardEnum}) async {
    state = DashboardState.screen(dashboardEnum: dashboardEnum);
  }
}
