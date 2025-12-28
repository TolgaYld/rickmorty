import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/datasources/settings/local/settings.datasource.dart';
import 'package:rickmorty_riverpod/services/datasources/settings/local/settings.impl.datasource.dart';
import 'package:rickmorty_riverpod/services/repositories/settings/settings.repo.dart';

final settingsRepositoryProvider = Provider.autoDispose<SettingsRepository>(
  (ref) => SettingsRepositoryImpl(ref.watch(settingsDatasourceProvider)),
);

class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._datasource);
  final SettingsDatasource _datasource;

  @override
  ResultFuture<ThemeMode> getThemeMode() async {
    try {
      final result = await _datasource.getThemeMode();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> saveThemeMode(ThemeMode mode) async {
    try {
      await _datasource.saveThemeMode(mode);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }
}
