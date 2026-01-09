import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/data/datasources/local/theme_mode.local.datasource.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/domain/repository/theme_mode.repo.dart';

class ThemeModeRepositoryImpl implements ThemeModeRepository {
  ThemeModeRepositoryImpl(this._datasource);
  final ThemeModeLocalDatasource _datasource;

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
