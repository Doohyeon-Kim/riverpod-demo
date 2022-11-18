import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AScreen extends StatelessWidget {
  const AScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: Text('go back'),
        ),
      ),
    );
  }
}
