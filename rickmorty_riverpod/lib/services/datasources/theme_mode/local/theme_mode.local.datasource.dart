import 'package:flutter/material.dart';

abstract interface class ThemeModeLocalDatasource {
  Future<ThemeMode> getThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
}
