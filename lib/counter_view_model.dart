import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter.dart';

// final counterProvider = StateProvider<Counter>((ref) => Counter());


final counterProvider = ChangeNotifierProvider<CounterNotifier>((ref) => CounterNotifier());

class CounterNotifier extends ChangeNotifier {
  final Counter counter = Counter();
  void increment() {
    counter.count += 1;
    notifyListeners();
  }
}

// final counterViewModel = StateNotifierProvider<CounterViewModel, Counter>((ref) {
//   return CounterViewModel(ref);
// });
//
// class CounterViewModel extends StateNotifier<Counter> {
//   CounterViewModel(this.ref): super(Counter());
//
//   final Ref ref;
//
//   void increment(){
//     ref.read(counterViewModel).count = ref.read(counterViewModel).count! + 1;
//   }
// }
