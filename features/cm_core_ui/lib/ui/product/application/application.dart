import 'package:cm_core_ui/ui/product/application/product_list_logic.dart';
import 'package:cm_core_ui/ui/product/application/product_list_state.dart';
import 'package:cm_core_ui/ui/product/application/product_list_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_access/data_access.dart';
import 'product_data_state.dart';
import 'product_logic.dart';
import 'product_usecase.dart';

final productListProvider =
    StateNotifierProvider<ProductListUseCase, ProductListState>(
        (ref) => ProductListLogic(ref.watch(defaultProductListRepoProvider)));

// final productProvider = StateNotifierProvider<ProductUseCase, ProductDataState>(
//     (ref) => ProductLogic());
// final productProvider = StateNotifierProvider<ProductUC, ProductDataState>(
//     ((ref) => ProductLogic(ref.watch(defaultProductRepoProvider))));
