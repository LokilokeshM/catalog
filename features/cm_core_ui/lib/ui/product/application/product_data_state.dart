import 'package:cm_network_implementation/entity/product_list_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data_state.freezed.dart';

@freezed
class ProductDataState with _$ProductDataState {
  factory ProductDataState.initial() = _Initial;
  factory ProductDataState.data({Product? products}) = _Data;
  factory ProductDataState.success(String successText) = _Success;
  factory ProductDataState.failure(String failureText) = _Failure;
}
