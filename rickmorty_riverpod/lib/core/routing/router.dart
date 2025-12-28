import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/character/character.page.dart';
import 'package:rickmorty_riverpod/presentation/character/character_detail/character_detail.page.dart';
import 'package:rickmorty_riverpod/presentation/favorites/favorites.page.dart';
import 'package:rickmorty_riverpod/presentation/home.page.dart';
import 'package:rickmorty_riverpod/presentation/settings/settings.page.dart';

enum RoutePath {
  character(path: '/character'),
  favorites(path: '/favorites'),
  settings(path: '/settings')
  ;

  const RoutePath({required this.path});
  final String path;
}

final navigationManagerProvider = Provider<GoRouter>((ref) {
  final routerNotifier = RouterNotifier();
  return GoRouter(
    initialLocation: RoutePath.character.path,
    debugLogDiagnostics: kReleaseMode == false,
    routes: routerNotifier._routes,
  );
});

class RouterNotifier extends ChangeNotifier {
  RouterNotifier();

  List<RouteBase> get _routes => [
    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, shell) => CustomTransitionPage(
        child: HomePage(navigationShell: shell),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.character.path,
              name: RoutePath.character.name,
              builder: (context, state) => const CharacterPage(),
              routes: [
                GoRoute(
                  path: ':id',
                  name: 'character_detail',
                  builder: (context, state) {
                    final id = state.pathParameters['id'] ?? '0';
                    return CharacterDetailPage(
                      characterId: int.tryParse(id) ?? 0,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.favorites.path,
              name: RoutePath.favorites.name,
              builder: (context, state) => const FavoritesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: RoutePath.settings.path,
              name: RoutePath.settings.name,
              builder: (context, state) => const SettingsPage(),
            ),
          ],
        ),
      ],
    ),
  ];
}
