import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_success.freezed.dart';

@freezed
class CountSuccess with _$CountSuccess {
  factory CountSuccess({int? count}) = _CountSuccess;
  const CountSuccess._();
}
