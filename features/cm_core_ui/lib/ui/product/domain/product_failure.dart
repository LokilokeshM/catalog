import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  factory ProductFailure({required String failureMessage}) = _ProductFailure;
  ProductFailure._();
}
