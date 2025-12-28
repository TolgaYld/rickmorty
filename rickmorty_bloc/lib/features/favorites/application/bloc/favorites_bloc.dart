import 'package:bloc/bloc.dart';
import 'package:core/rickmorty_core.dart';
import 'package:flutter/foundation.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_state.dart';
import 'package:rickmorty_bloc/features/favorites/domain/repository/favorites.repo.dart';

part 'favorites_event.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(this._repository) : super(const FavoritesStateInitial()) {
    on<FavoritesEventLoad>(_onLoadFavorites);
    on<FavoritesEventToggle>(_onToggleFavorite);
  }

  final FavoritesRepository _repository;

  Future<void> _onLoadFavorites(
    FavoritesEventLoad event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(const FavoritesStateLoading());
    final result = await _repository.getFavorites();
    emit(
      result.fold(
        (failure) => FavoritesStateError(message: failure.message),
        (data) => FavoritesStateLoaded(favorites: data),
      ),
    );
  }

  Future<void> _onToggleFavorite(
    FavoritesEventToggle event,
    Emitter<FavoritesState> emit,
  ) async {
    if (state case FavoritesStateLoaded(favorites: final currentList)) {
      final character = event.character;
      List<Character> newList;

      if (currentList.any((e) => e.id == character.id)) {
        newList = currentList.where((e) => e.id != character.id).toList();
      } else {
        newList = [...currentList, character];
      }

      emit(FavoritesStateLoaded(favorites: newList));

      final result = await _repository.saveFavorites(newList);

      result.fold(
        (failure) {
          emit(FavoritesStateLoaded(favorites: currentList));
          // TODO: emit error or show toast
        },
        (_) {},
      );
    }
  }
}
