import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/material.dart';

part 'theme_mode.state.mapper.dart';

@MappableClass()
class ThemeModeState with ThemeModeStateMappable {
  const ThemeModeState({
    this.themeMode = ThemeMode.system,
  });

  final ThemeMode themeMode;
}
