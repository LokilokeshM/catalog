import 'package:cm_core_ui/ui/product/domain/product_failure.dart';
import 'package:cm_core_ui/ui/product/domain/product_success.dart';
import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_result/freezed_result.dart';

abstract class ProductRepo {
  Future<Result<ProductSuccess, ProductFailure>> addProduct(Product product);
  Future<Result<ProductSuccess, ProductFailure>> updateProduct(
      int id, Product product);
  Future<Result<ProductSuccess, ProductFailure>> deleteProduct(int id);
}
