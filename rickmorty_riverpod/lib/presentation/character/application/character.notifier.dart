import 'dart:async';
import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:rickmorty_riverpod/presentation/character/application/state/character.state.dart';
import 'package:rickmorty_riverpod/services/repositories/character/character.impl.repo.dart';

final characterNotifierProvider = AsyncNotifierProvider<CharacterNotifier, CharacterState>(
  CharacterNotifier.new,
);

class CharacterNotifier extends AsyncNotifier<CharacterState> {
  @override
  FutureOr<CharacterState> build() async {
    final repo = ref.read(characterRepositoryProvider);
    final result = await repo.getCharacters(page: 1);
    return switch (result) {
      Left(:final failure) => throw Exception(failure.message),
      Right(:final value) => CharacterState(characters: value),
    };
  }

  Future<void> loadMoreCharacters() async {
    if (state.value case CharacterState(
      :final hasReachedMax,
      :final isFetchingMore,
      :final currentPage,
      :final characters,
      :final copyWith,
    ) when hasReachedMax == false && isFetchingMore == false) {
      state = AsyncData(copyWith(isFetchingMore: true));

      final repo = ref.read(characterRepositoryProvider);
      final result = await repo.getCharacters(
        page: currentPage + 1,
      );

      state = switch (result) {
        Left(:final failure) => AsyncError(failure.message, StackTrace.current),
        Right(value: final newCharacters) => switch (newCharacters) {
          [] => AsyncData(
            copyWith(
              hasReachedMax: true,
              isFetchingMore: false,
            ),
          ),
          _ => AsyncData(
            copyWith(
              characters: [...characters, ...newCharacters],
              currentPage: currentPage + 1,
              isFetchingMore: false,
            ),
          ),
        },
      };
    }
  }

  Future<void> loadCharacter(int id) async {
    if (state.value case CharacterState(:final copyWith)) {
      final repo = ref.read(characterRepositoryProvider);
      final result = await repo.getCharacterById(id);

      state = switch (result) {
        Left(:final failure) => AsyncError(failure.message, StackTrace.current),
        Right(:final value) => AsyncData(copyWith(character: value)),
      };
    }
  }
}
