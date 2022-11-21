import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/counter.dart';
import 'package:riverpod_test/counter_view_model.dart';

class CountView extends ConsumerWidget {
  const CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Counter counter = ref.watch(counterProvider).counter;
    return Row(
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
