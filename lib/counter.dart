import 'package:flutter/foundation.dart';

@immutable
class Counter {
  const Counter({required this.count});

  final int count;

  Counter copyWith({int? count}) {
    return Counter(count: count ?? this.count);
  }
}

class CounterCNP {
  late int count;

  CounterCNP() {
    count = 0;
  }
}
