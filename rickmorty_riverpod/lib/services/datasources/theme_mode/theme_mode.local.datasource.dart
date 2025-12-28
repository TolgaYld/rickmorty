import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/storage/local_storage_adapter.dart';

abstract class ThemeModeLocalDatasource {
  Future<ThemeMode> getThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
}

class ThemeModeLocalDatasourceImpl implements ThemeModeLocalDatasource {
  ThemeModeLocalDatasourceImpl(this._storage);

  final LocalStorageAdapter _storage;
  static const _kThemeModeKey = 'theme_mode_v1';

  @override
  Future<ThemeMode> getThemeMode() async {
    // Basic implementation, storage might throw if connection fails?
    // Usually LocalStorageAdapter wraps generic get.
    final stored = await _storage.get(_kThemeModeKey);
    if (stored is String) {
      return ThemeMode.values.firstWhere(
        (e) => e.name == stored,
        orElse: () => ThemeMode.system,
      );
    }
    return ThemeMode.system;
  }

  @override
  Future<void> saveThemeMode(ThemeMode mode) async {
    await _storage.set(_kThemeModeKey, mode.name);
  }
}

final themeModeLocalDatasourceProvider =
    Provider.autoDispose<ThemeModeLocalDatasource>((ref) {
      final storage = ref.watch(localStorageAdapterProvider);
      return ThemeModeLocalDatasourceImpl(storage);
    });
