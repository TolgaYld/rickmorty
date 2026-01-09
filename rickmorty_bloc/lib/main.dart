import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/core/di/service_locator.dart';
import 'package:rickmorty_bloc/core/routing/router.dart';
import 'package:rickmorty_bloc/features/character/application/bloc/character_bloc.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_bloc.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/application/cubit/theme_mode_cubit.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/application/cubit/theme_mode_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<CharacterBloc>()..add(CharacterEventLoadInitial()),
        ),
        BlocProvider(
          create: (_) => sl<FavoritesBloc>()..add(FavoritesEventLoad()),
        ),
        BlocProvider(
          create: (_) => sl<ThemeModeCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeModeCubit, ThemeModeState>(
        builder: (context, state) {
          final themeMode = switch (state) {
            ThemeModeStateLoaded(themeMode: final mode) => mode,
            _ => ThemeMode.system,
          };

          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeMode,
            localizationsDelegates: L10n.localizationsDelegates,
            supportedLocales: L10n.supportedLocales,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
