import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/datasources/theme_mode/local/theme_mode.local.datasource.dart';
import 'package:rickmorty_riverpod/services/datasources/theme_mode/local/theme_model.impl.datasource.dart';
import 'package:rickmorty_riverpod/services/repositories/theme_mode/theme_mode.repo.dart';

final themeModeRepositoryProvider = Provider.autoDispose<ThemeModeRepository>(
  (ref) => ThemeModeRepositoryImpl(ref.watch(themeModeLocalDatasourceProvider)),
);

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
