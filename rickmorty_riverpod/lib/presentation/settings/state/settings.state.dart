import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'settings.state.mapper.dart';

@MappableClass()
sealed class SettingsState with SettingsStateMappable {
  const SettingsState();
}

@MappableClass()
class SettingsStateInitial extends SettingsState
    with SettingsStateInitialMappable {
  const SettingsStateInitial();
}

@MappableClass()
class SettingsStateLoading extends SettingsState
    with SettingsStateLoadingMappable {
  const SettingsStateLoading();
}

@MappableClass()
class SettingsStateLoaded extends SettingsState
    with SettingsStateLoadedMappable {
  const SettingsStateLoaded({required this.themeMode});
  final ThemeMode themeMode;
}

@MappableClass()
class SettingsStateError extends SettingsState with SettingsStateErrorMappable {
  const SettingsStateError({required this.message});
  final String message;
}
