import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter.dart';

final counterProvider = StateNotifierProvider<CounterViewModel, Counter>(
    (ref) => CounterViewModel());

class CounterViewModel extends StateNotifier<Counter> {
  CounterViewModel() : super(Counter());

  void increment() {
    state = Counter(count: state.count);
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
