import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/settings/theme_mode/application/state/theme_mode.state.dart';
import 'package:rickmorty_riverpod/services/repositories/theme_mode/theme_mode.impl.repo.dart';

final themeModeNotifierProvider =
    AsyncNotifierProvider<ThemeModeNotifier, ThemeModeState>(
      ThemeModeNotifier.new,
    );

class ThemeModeNotifier extends AsyncNotifier<ThemeModeState> {
  @override
  FutureOr<ThemeModeState> build() async {
    return loadThemeMode();
  }

  Future<ThemeModeState> loadThemeMode() async {
    final repo = ref.read(themeModeRepositoryProvider);
    final result = await repo.getThemeMode();
    return result.fold(
      (failure) => throw failure,
      (mode) => ThemeModeState(themeMode: mode),
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    // Optimistic update
    state = AsyncData(ThemeModeState(themeMode: mode));
    final repo = ref.read(themeModeRepositoryProvider);
    final result = await repo.saveThemeMode(mode);

    result.fold(
      (failure) {
        // Revert on failure (reload from repo or previous state if available)
        // For simplicity, we just invalidate to reload
        ref.invalidateSelf();
      },
      (_) {},
    );
  }
}
