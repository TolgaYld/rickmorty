import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/storage/local_storage_adapter.dart';
import 'package:rickmorty_riverpod/services/datasources/settings/local/settings.datasource.dart';

final settingsDatasourceProvider = Provider.autoDispose<SettingsDatasource>(
  (ref) => SettingsDatasourceImpl(ref.watch(localStorageAdapterProvider)),
);

class SettingsDatasourceImpl implements SettingsDatasource {
  SettingsDatasourceImpl(this._storage);

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
