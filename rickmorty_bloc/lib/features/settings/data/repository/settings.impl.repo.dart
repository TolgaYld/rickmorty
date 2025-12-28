import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty_bloc/features/settings/data/datasources/local/settings.local.datasource.dart';
import 'package:rickmorty_bloc/features/settings/domain/repository/settings.repo.dart';

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
