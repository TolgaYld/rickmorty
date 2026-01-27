import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/datasources/favorites/local/favorites.local.datasource.dart';
import 'package:rickmorty_riverpod/services/datasources/favorites/local/favorites.impl.local.datasource.dart';
import 'package:rickmorty_riverpod/services/repositories/favorites/favorites.repo.dart';

final favoritesRepositoryProvider = Provider.autoDispose<FavoritesRepository>(
  (ref) => FavoritesRepositoryImpl(ref.watch(favoritesDatasourceProvider)),
);

class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl(this._datasource);
  final FavoritesLocalDatasource _datasource;

  @override
  ResultFuture<List<Character>> getFavorites() async {
    try {
      final result = await _datasource.getFavorites();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }

  @override
  ResultFuture<void> saveFavorites(List<Character> characters) async {
    try {
      await _datasource.saveFavorites(characters);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure.fromException(e));
    }
  }
}
