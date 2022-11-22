import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/models/counter.dart';
import 'package:riverpod_demo/providers/counter_provider.dart';
import 'package:riverpod_demo/models/counter_legacy.dart';

class CountView extends ConsumerWidget {
  const CountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Counter counter = ref.watch(counterProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Count: ${counter.count}"),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(counterProvider.notifier).increment();
          },
          child: const Text('Count Up'),
        ),
      ],
    );
  }
}

class CountView2 extends ConsumerWidget {
  const CountView2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CounterPure counter = ref.watch(counterProvider2);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Count: ${counter.count}"),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(counterProvider2.notifier).increment();
          },
          child: const Text('Count Up'),
        ),
      ],
    );
  }
}



class CountView3 extends ConsumerWidget {
  const CountView3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CounterCNP counter = ref.watch(counterProvider3).counter;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Count: ${counter.count}"),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(counterProvider3.notifier).increment();
          },
          child: const Text('Count Up'),
        ),
      ],
    );
  }
}
