import 'package:flutter/foundation.dart';

@immutable
class CounterPure {
  const CounterPure({required this.count});

  final int count;

  CounterPure copyWith({int? count}) {
    return CounterPure(count: count ?? this.count);
  }
}

class CounterCNP {
  late int count;

  CounterCNP() {
    count = 0;
  }
}
