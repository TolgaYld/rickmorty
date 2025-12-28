import 'package:bloc/bloc.dart';
import 'package:core/rickmorty_core.dart';
import 'package:flutter/foundation.dart';
import 'package:rickmorty_bloc/features/character/domain/repository/character.repo.dart';

import 'character_state.dart';

part 'character_event.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc(this._repository) : super(const CharacterStateInitial()) {
    on<CharacterEventLoadInitial>(_onLoadInitial);
    on<CharacterEventLoadMore>(_onLoadMore);
    on<CharacterEventLoadDetail>(_onLoadDetail);
  }

  final CharacterRepository _repository;

  Future<void> _onLoadInitial(
    CharacterEventLoadInitial event,
    Emitter<CharacterState> emit,
  ) async {
    emit(const CharacterStateLoading());
    final result = await _repository.getCharacters(page: 1);
    emit(
      switch (result) {
        Left(:final failure) => CharacterStateError(message: failure.message),
        Right(:final value) => CharacterStateLoaded(characters: value),
      },
    );
  }

  Future<void> _onLoadMore(
    CharacterEventLoadMore event,
    Emitter<CharacterState> emit,
  ) async {
    if (state case CharacterStateLoaded(
      :final hasReachedMax,
      :final isFetchingMore,
      :final currentPage,
      :final characters,
      :final copyWith,
    )) {
      if (hasReachedMax || isFetchingMore) return;

      emit(copyWith(isFetchingMore: true));

      final result = await _repository.getCharacters(page: currentPage + 1);

      emit(
        switch (result) {
          Left(:final failure) => CharacterStateError(message: failure.message),
          Right(value: final newCharacters) =>
            newCharacters.isEmpty
                ? copyWith(hasReachedMax: true, isFetchingMore: false)
                : copyWith(
                    characters: [...characters, ...newCharacters],
                    currentPage: currentPage + 1,
                    isFetchingMore: false,
                  ),
        },
      );
    }
  }

  Future<void> _onLoadDetail(
    CharacterEventLoadDetail event,
    Emitter<CharacterState> emit,
  ) async {
    if (state case CharacterStateLoaded(:final characters)) {
      emit(const CharacterStateLoading());

      final result = await _repository.getCharacterById(event.id);
      emit(
        switch (result) {
          Left(:final failure) => CharacterStateError(message: failure.message),
          Right(:final value) => CharacterStateLoaded(
            character: value,
            characters: characters,
          ),
        },
      );
    }
  }
}
