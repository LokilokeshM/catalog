// import 'package:cm_core_ui/ui/overview/application/overview_count_state.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// abstract class OverViewCountUseCase extends StateNotifier<OverViewCountState> {
//   OverViewCountUseCase(OverViewCountState state) : super(state);

//   Future<void> getCounts();
// }

import 'package:cm_core_ui/ui/overview/application/overview_count_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class OverViewCountUseCase extends StateNotifier<OverViewCountState> {
  OverViewCountUseCase(super.state);
  Future<void> getCounts();
}
