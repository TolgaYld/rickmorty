import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';

abstract interface class SettingsRepository {
  ResultFuture<ThemeMode> getThemeMode();
  ResultFuture<void> saveThemeMode(ThemeMode mode);
}
