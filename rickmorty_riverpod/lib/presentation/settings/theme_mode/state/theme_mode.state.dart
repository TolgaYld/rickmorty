import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'theme_mode.state.mapper.dart';

@MappableClass()
sealed class ThemeModeState with ThemeModeStateMappable {
  const ThemeModeState();
}

@MappableClass()
class ThemeModeStateInitial extends ThemeModeState
    with ThemeModeStateInitialMappable {
  const ThemeModeStateInitial();
}

@MappableClass()
class ThemeModeStateLoading extends ThemeModeState
    with ThemeModeStateLoadingMappable {
  const ThemeModeStateLoading();
}

@MappableClass()
class ThemeModeStateLoaded extends ThemeModeState
    with ThemeModeStateLoadedMappable {
  const ThemeModeStateLoaded({required this.themeMode});
  final ThemeMode themeMode;
}

@MappableClass()
class ThemeModeStateError extends ThemeModeState
    with ThemeModeStateErrorMappable {
  const ThemeModeStateError({required this.message});
  final String message;
}
