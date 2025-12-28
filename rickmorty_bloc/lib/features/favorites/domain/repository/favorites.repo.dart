import 'package:core/rickmorty_core.dart';

abstract interface class FavoritesRepository {
  ResultFuture<List<Character>> getFavorites();
  ResultFuture<void> saveFavorites(List<Character> characters);
}
