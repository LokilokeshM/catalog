// import 'package:cm_core_ui/model/count_helper.dart' as c;
// import 'package:cm_core_ui/ui/overview/presentation/overview_page.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'overview_count_state.freezed.dart';

// @freezed
// class OverViewCountState with _$OverViewCountState {
//   factory OverViewCountState.initial() = _Initial;
//   factory OverViewCountState.countData({required c.CountHelper countHelper}) =
//       _CountData;
//   factory OverViewCountState.failure() = _Failure;
// }

import 'package:cm_core_ui/model/count_helper.dart';
import 'package:cm_core_ui/model/top_list_tap_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_count_state.freezed.dart';

@freezed
class OverViewCountState with _$OverViewCountState {
  factory OverViewCountState.initial() = _Initial;
  factory OverViewCountState.success(
      {required List<TopListTabCardHelper> tab}) = _Success;
  factory OverViewCountState.failure() = _Failure;
}
