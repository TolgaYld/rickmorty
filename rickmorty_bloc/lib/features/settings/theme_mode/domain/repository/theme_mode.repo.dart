import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';

abstract interface class ThemeModeRepository {
  ResultFuture<ThemeMode> getThemeMode();
  ResultFuture<void> saveThemeMode(ThemeMode mode);
}
