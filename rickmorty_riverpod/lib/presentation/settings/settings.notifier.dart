import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/settings/state/settings.state.dart';
import 'package:rickmorty_riverpod/services/repositories/theme_mode/theme_mode.impl.repo.dart';

final settingsNotifierProvider =
    NotifierProvider<SettingsNotifier, SettingsState>(SettingsNotifier.new);

class SettingsNotifier extends Notifier<SettingsState> {
  @override
  SettingsState build() {
    Future.microtask(loadThemeMode);
    return const SettingsStateInitial();
  }

  Future<void> loadThemeMode() async {
    state = const SettingsStateLoading();
    final result = await ref.read(themeModeRepositoryProvider).getThemeMode();
    state = result.fold(
      (failure) => SettingsStateError(message: failure.message),
      (mode) => SettingsStateLoaded(themeMode: mode),
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    // Optimistic update
    state = SettingsStateLoaded(themeMode: mode);
    await ref.read(themeModeRepositoryProvider).saveThemeMode(mode);
  }
}
