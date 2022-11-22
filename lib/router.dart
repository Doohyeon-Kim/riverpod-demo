import 'package:go_router/go_router.dart';
import 'package:riverpod_demo/a_screen.dart';
import 'package:riverpod_demo/home_screen.dart';

GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (_, state) {
      return const HomeScreen();
    },
    routes: [
      GoRoute(
        path: 'a',
        builder: (_, state) {
          return const AScreen();
        },
      ),
    ],
  ),
]);
