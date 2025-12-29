import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/favorites/state/favorites.state.dart';
import 'package:rickmorty_riverpod/services/repositories/favorites/favorites.impl.repo.dart';

final favoritesNotifierProvider =
    NotifierProvider<FavoritesNotifier, FavoritesState>(
      FavoritesNotifier.new,
    );

class FavoritesNotifier extends Notifier<FavoritesState> {
  @override
  FavoritesState build() {
    Future.microtask(loadFavorites);
    return const FavoritesStateLoading();
  }

  Future<void> loadFavorites() async {
    state = const FavoritesStateLoading();
    final result = await ref.read(favoritesRepositoryProvider).getFavorites();
    state = result.fold(
      (failure) => FavoritesStateError(message: failure.message),
      (data) => FavoritesStateLoaded(favorites: data),
    );
  }

  Future<void> toggleFavorite(Character character) async {
    final currentState = state;
    if (currentState is! FavoritesStateLoaded) return;

    final currentList = currentState.favorites;
    List<Character> newList;
    if (currentList.any((e) => e.id == character.id)) {
      newList = currentList.where((e) => e.id != character.id).toList();
    } else {
      newList = [...currentList, character];
    }

    state = FavoritesStateLoaded(favorites: newList);

    final result = await ref
        .read(favoritesRepositoryProvider)
        .saveFavorites(newList);

    result.fold(
      (failure) {
        // Revert on failure
        state = FavoritesStateLoaded(favorites: currentList);
        // show error
      },
      (_) {},
    );
  }
}
