import 'package:flutter/material.dart';

abstract interface class SettingsDatasource {
  Future<ThemeMode> getThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
}
