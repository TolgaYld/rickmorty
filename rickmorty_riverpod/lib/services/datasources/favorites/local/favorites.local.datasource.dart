import 'package:core/rickmorty_core.dart';

abstract interface class FavoritesLocalDatasource {
  Future<List<Character>> getFavorites();
  Future<void> saveFavorites(List<Character> characters);
}
