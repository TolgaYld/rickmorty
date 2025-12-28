import 'package:core/rickmorty_core.dart';

abstract interface class FavoritesDatasource {
  Future<List<Character>> getFavorites();
  Future<void> saveFavorites(List<Character> characters);
}
