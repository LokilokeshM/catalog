import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';

@freezed
class ErrorResponse with _$ErrorResponse {
  factory ErrorResponse() = _ErrorResponse;
  const ErrorResponse._();
}
