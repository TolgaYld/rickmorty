import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/application/cubit/theme_mode_state.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/domain/repository/theme_mode.repo.dart';

class ThemeModeCubit extends Cubit<ThemeModeState> {
  ThemeModeCubit(this._repository) : super(const ThemeModeStateInitial()) {
    _loadThemeMode();
  }

  final ThemeModeRepository _repository;

  Future<void> _loadThemeMode() async {
    emit(const ThemeModeStateLoading());
    final result = await _repository.getThemeMode();
    emit(
      result.fold(
        (failure) => ThemeModeStateError(message: failure.message),
        (mode) => ThemeModeStateLoaded(themeMode: mode),
      ),
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    emit(ThemeModeStateLoaded(themeMode: mode));
    final result = await _repository.saveThemeMode(mode);

    result.fold(
      (failure) {
        emit(ThemeModeStateError(message: failure.message));
      },
      (_) {},
    );
  }
}
