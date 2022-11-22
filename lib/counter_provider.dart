import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter.dart';

final counterProvider =
    StateNotifierProvider<CounterNotifier, Counter>((ref) => CounterNotifier());

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(const Counter(count: 0));

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}

final counterProvider2 = ChangeNotifierProvider<CounterChangeNotifier>(
    (ref) => CounterChangeNotifier());

class CounterChangeNotifier extends ChangeNotifier {
  final CounterCNP counter = CounterCNP();

  void increment() {
    counter.count += 1;
    notifyListeners();
  }
}
