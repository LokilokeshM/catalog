import 'package:cm_core_ui/ui/overview/application/overview_count_logic.dart';
import 'package:cm_core_ui/ui/overview/application/topselling_product_logic.dart';
import 'package:cm_core_ui/ui/overview/application/topselling_product_state.dart';
import 'package:cm_core_ui/ui/overview/application/topselling_product_usercase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../ui/overview/application/overview_count_state.dart';
import '../../../ui/overview/application/overview_count_usecase.dart';
import '../data_access/data_access.dart';

final overviewCountProvider =
    StateNotifierProvider.autoDispose<OverViewCountUseCase, OverViewCountState>(
  (ref) => OverViewCountLogic(ref.watch(countRepoProvider)),
);
final overviewTopSellingProvider = StateNotifierProvider.autoDispose<
        TopSellingProductUseCase, TopSellingProductState>(
    (ref) => TopSellingProductLogic(ref.watch(topSellingRepoProvider)));
