import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_demo/count_view.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod Demo"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/a');
              },
              child: const Text('GoRouter with riverpod'),
            ),
            const CountView(),
            const CountView2(),
            const CountView3(),
          ],
        ),
      ),
    );
  }
}
