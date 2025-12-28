import 'package:core/rickmorty_core.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'favorites.state.mapper.dart';

@MappableClass()
sealed class FavoritesState with FavoritesStateMappable {
  const FavoritesState();
}

@MappableClass()
class FavoritesStateInitial extends FavoritesState
    with FavoritesStateInitialMappable {
  const FavoritesStateInitial();
}

@MappableClass()
class FavoritesStateLoading extends FavoritesState
    with FavoritesStateLoadingMappable {
  const FavoritesStateLoading();
}

@MappableClass()
class FavoritesStateLoaded extends FavoritesState
    with FavoritesStateLoadedMappable {
  const FavoritesStateLoaded({required this.favorites});
  final List<Character> favorites;
}

@MappableClass()
class FavoritesStateError extends FavoritesState
    with FavoritesStateErrorMappable {
  const FavoritesStateError({required this.message});
  final String message;
}
