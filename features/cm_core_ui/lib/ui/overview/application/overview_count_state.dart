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
