import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter.dart';

final counterViewModel = StateNotifierProvider<CounterViewModel, Counter>((ref) {
  return CounterViewModel(ref);
});

class CounterViewModel extends StateNotifier<Counter> {
  CounterViewModel(this.ref): super(Counter());

  final Ref ref;

  int count = 0;

  void increment(){
    ref.read(counterViewModel).count =1;
  }
}