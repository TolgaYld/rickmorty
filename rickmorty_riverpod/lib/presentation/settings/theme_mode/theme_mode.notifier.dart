import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/settings/theme_mode/state/theme_mode.state.dart';
import 'package:rickmorty_riverpod/services/repositories/theme_mode/theme_mode.impl.repo.dart';

final themeModeNotifierProvider =
    NotifierProvider<ThemeModeNotifier, ThemeModeState>(ThemeModeNotifier.new);

class ThemeModeNotifier extends Notifier<ThemeModeState> {
  @override
  ThemeModeState build() {
    Future.microtask(loadThemeMode);
    return const ThemeModeStateLoading();
  }

  Future<void> loadThemeMode() async {
    final repo = ref.read(themeModeRepositoryProvider);
    final result = await repo.getThemeMode();
    state = result.fold(
      (failure) => ThemeModeStateError(message: failure.message),
      (mode) => ThemeModeStateLoaded(themeMode: mode),
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    // Optimistic update
    state = ThemeModeStateLoaded(themeMode: mode);
    final repo = ref.read(themeModeRepositoryProvider);
    await repo.saveThemeMode(mode);
  }
}
