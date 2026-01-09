import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';

abstract interface class ThemeModeLocalDatasource {
  Future<ThemeMode> getThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
}

class ThemeModeLocalDatasourceImpl implements ThemeModeLocalDatasource {
  ThemeModeLocalDatasourceImpl(this._storage);

  final LocalStorageAdapter _storage;

  @override
  Future<ThemeMode> getThemeMode() async {
    try {
      final stored = await _storage.get(StorageKeys.themeMode);
      if (stored is String) {
        return ThemeMode.values.firstWhere(
          (e) => e.name == stored,
          orElse: () => ThemeMode.system,
        );
      }
      return ThemeMode.system;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> saveThemeMode(ThemeMode mode) async {
    try {
      await _storage.set(StorageKeys.themeMode, mode.name);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
