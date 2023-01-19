import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_failure.freezed.dart';

@freezed
class CountFailure with _$CountFailure {
  factory CountFailure() = _CountFailure;
  const CountFailure._();
}
