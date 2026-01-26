import 'package:core/rickmorty_core.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'favorites.state.mapper.dart';

@MappableClass()
class FavoritesState with FavoritesStateMappable {
  const FavoritesState({
    this.favorites = const [],
  });

  final List<Character> favorites;
}
