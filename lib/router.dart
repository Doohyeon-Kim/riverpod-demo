import 'package:go_router/go_router.dart';
import 'package:riverpod_test/a_screen.dart';
import 'package:riverpod_test/home_screen.dart';

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
