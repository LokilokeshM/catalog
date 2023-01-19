import 'package:cm_core_ui/ui/overview/application/topselling_product_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class TopSellingProductUseCase
    extends StateNotifier<TopSellingProductState> {
  TopSellingProductUseCase(super.state);
  Future<void> getTopSellingProduct();
}
