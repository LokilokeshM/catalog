import 'package:cm_core_ui/ui/product/data_access/default_product_list_repo.dart';
import 'package:cm_core_ui/ui/product/domain/product_list_repo.dart';
import 'package:cm_core_ui/ui/product/infrastructure/infrastructure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'default_product_repo.dart';

final defaultProductListRepoProvider = Provider(
    (ref) => DefaultProductListRepo(ref.watch(productListApiProvider)));
final defaultProductRepoProvider =
    Provider((ref) => DefaultProductRepo(ref.watch(productApiProvider)));
