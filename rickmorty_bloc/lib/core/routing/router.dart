import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rickmorty_bloc/core/presentation/pages/home.page.dart';
import 'package:rickmorty_bloc/features/character/presentation/character.page.dart';
import 'package:rickmorty_bloc/features/character/presentation/character_detail/character_detail.page.dart';
import 'package:rickmorty_bloc/features/favorites/presentation/favorites.page.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/presentation/settings.page.dart';

enum RoutePath {
  character(path: '/character'),
  characterDetail(path: '/character/:id'),
  favorites(path: '/favorites'),
  settings(path: '/settings')
  ;

  const RoutePath({required this.path});
  final String path;
}

final router = GoRouter(
  initialLocation: RoutePath.character.path,
  debugLogDiagnostics: kReleaseMode == false,
  routes: [
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
                  path: RoutePath.characterDetail.path,
                  name: RoutePath.characterDetail.name,
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
  ],
);
