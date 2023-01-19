import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cm_common/enum/enums.dart';
part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState.screen({required DashboardEnum dashboardEnum}) =
      _Screen;
}
