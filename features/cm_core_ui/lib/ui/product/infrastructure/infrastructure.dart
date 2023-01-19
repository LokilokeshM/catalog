import 'package:cm_core_ui/ui/product/infrastructure/raw_product_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'raw_product_list_api.dart';

final productListApiProvider = Provider((ref) => RawProductListApi());
final productApiProvider = Provider((ref) => RawProductApi());
