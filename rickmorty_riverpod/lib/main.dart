import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:rickmorty_riverpod/core/routing/router.dart';
import 'package:rickmorty_riverpod/presentation/settings/theme_mode/application/theme_mode.notifier.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeAsyncState = ref.watch(themeModeNotifierProvider);
    final themeMode = switch (themeAsyncState) {
      AsyncData(:final value) => value.themeMode,
      _ => ThemeMode.system,
    };
    final router = ref.watch(navigationManagerProvider);
    return MaterialApp.router(
      title: 'Rick and Morty',
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      themeMode: themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: router,
    );
  }
}
