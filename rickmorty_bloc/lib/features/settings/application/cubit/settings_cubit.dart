import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/features/settings/application/cubit/settings_state.dart';
import 'package:rickmorty_bloc/features/settings/domain/repository/settings.repo.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._repository) : super(const SettingsStateInitial()) {
    _loadThemeMode();
  }

  final SettingsRepository _repository;

  Future<void> _loadThemeMode() async {
    emit(const SettingsStateLoading());
    final result = await _repository.getThemeMode();
    emit(
      result.fold(
        (failure) => SettingsStateError(message: failure.message),
        (mode) => SettingsStateLoaded(themeMode: mode),
      ),
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    emit(SettingsStateLoaded(themeMode: mode));
    final result = await _repository.saveThemeMode(mode);

    result.fold(
      (failure) {
        emit(SettingsStateError(message: failure.message));
      },
      (_) {},
    );
  }
}
