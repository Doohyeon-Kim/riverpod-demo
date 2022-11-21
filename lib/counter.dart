import 'package:flutter/foundation.dart';

@immutable
class Counter {
  Counter({int count = 0}) {
    count = count;
  }

  late final int count;
}

class CounterCNP {
  late int count;

  CounterCNP() {
    count = 0;
  }
}
