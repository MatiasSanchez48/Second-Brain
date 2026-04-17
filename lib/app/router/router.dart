import 'package:go_router/go_router.dart';
import 'package:second_brain/features/features.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) => DashboardPage(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/Note',
          builder: (context, state) => const NotePage(),
        ),
        GoRoute(
          path: '/Favorite',
          builder: (context, state) => const FavoritePage(),
        ),
      ],
    ),
  ],
);
