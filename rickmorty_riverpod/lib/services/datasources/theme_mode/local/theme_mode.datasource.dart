import 'package:flutter/material.dart';

abstract interface class ThemeModeDatasource {
  Future<ThemeMode> getThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
}
