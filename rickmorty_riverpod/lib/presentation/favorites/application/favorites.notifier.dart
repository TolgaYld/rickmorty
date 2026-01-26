import 'dart:async';
import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/state/favorites.state.dart';
import 'package:rickmorty_riverpod/services/repositories/favorites/favorites.impl.repo.dart';

final favoritesNotifierProvider =
    AsyncNotifierProvider<FavoritesNotifier, FavoritesState>(
      FavoritesNotifier.new,
    );

class FavoritesNotifier extends AsyncNotifier<FavoritesState> {
  @override
  FutureOr<FavoritesState> build() async {
    final result = await ref.read(favoritesRepositoryProvider).getFavorites();
    return result.fold(
      (failure) => throw Exception(failure.message),
      (data) => FavoritesState(favorites: data),
    );
  }

  Future<void> toggleFavorite(Character character) async {
    if (state.value case FavoritesState(:final favorites, :final copyWith)) {
      List<Character> newList;
      if (favorites.any((e) => e.id == character.id)) {
        newList = favorites.where((e) => e.id != character.id).toList();
      } else {
        newList = [...favorites, character];
      }

      state = AsyncData(copyWith(favorites: newList));

      final result = await ref
          .read(favoritesRepositoryProvider)
          .saveFavorites(newList);

      result.fold(
        (failure) {
          state = AsyncData(copyWith(favorites: favorites));
        },
        (_) {},
      );
    }
  }
}
