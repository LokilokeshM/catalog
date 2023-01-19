import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_success.freezed.dart';

@freezed
class ProductSuccess with _$ProductSuccess {
  factory ProductSuccess({required String successMessage}) = _ProductSuccess;
  const ProductSuccess._();
}
