import 'package:cm_core_ui/model/topselling_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'topselling_product_state.freezed.dart';

@freezed
class TopSellingProductState with _$TopSellingProductState {
  factory TopSellingProductState.initial() = _Initial;
  factory TopSellingProductState.topSelling(List<TopSellingInfo> topSelling) =
      _TopSelling;
  factory TopSellingProductState.failure() = _Failure;
}
