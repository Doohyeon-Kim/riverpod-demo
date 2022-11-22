import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';
part 'counter.g.dart';

@freezed
class Counter with _$Counter{
  const factory Counter({
    required int count,
  }) = _Counter;

  factory Counter.fromJson(Map<String, Object?> json) => _$CounterFromJson(json);
}
