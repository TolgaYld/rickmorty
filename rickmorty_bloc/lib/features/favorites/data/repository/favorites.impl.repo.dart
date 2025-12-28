import 'package:core/rickmorty_core.dart';
import 'package:rickmorty_bloc/features/favorites/data/datasources/local/favorites.local.datasource.dart';
import 'package:rickmorty_bloc/features/favorites/domain/repository/favorites.repo.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl(this._datasource);
  final FavoritesDatasource _datasource;

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
