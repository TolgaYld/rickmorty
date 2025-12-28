import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/character/state/character.state.dart';
import 'package:rickmorty_riverpod/services/repositories/character/character.impl.repo.dart';

final characterNotifierProvider =
    NotifierProvider<CharacterNotifier, CharacterState>(CharacterNotifier.new);

class CharacterNotifier extends Notifier<CharacterState> {
  @override
  CharacterState build() {
    loadInitialCharacters();
    return state;
  }

  Future<void> loadInitialCharacters() async {
    state = const CharacterStateLoading();

    final repo = ref.read(characterRepositoryProvider);

    final result = await repo.getCharacters(page: 1);
    state = switch (result) {
      Left(:final failure) => CharacterStateError(message: failure.message),
      Right(:final value) => CharacterStateLoaded(characters: value),
    };
  }

  Future<void> loadMoreCharacters() async {
    if (state case CharacterStateLoaded(
      :final hasReachedMax,
      :final isFetchingMore,
      :final currentPage,
      :final characters,
      :final copyWith,
    )) {
      if (hasReachedMax || isFetchingMore) {
        return;
      }
      state = copyWith(isFetchingMore: true);

      final repo = ref.read(characterRepositoryProvider);
      final result = await repo.getCharacters(
        page: currentPage + 1,
      );
      state = switch (result) {
        Left(:final failure) => CharacterStateError(message: failure.message),
        Right(value: final newCharacters) =>
          newCharacters.isEmpty
              ? copyWith(
                  hasReachedMax: true,
                  isFetchingMore: false,
                )
              : copyWith(
                  characters: [...characters, ...newCharacters],
                  currentPage: currentPage + 1,
                  isFetchingMore: false,
                ),
      };
    }
  }

  Future<void> loadCharacter(int id) async {
    if (state case CharacterStateLoaded(:final characters)) {
      state = const CharacterStateLoading();

      final repo = ref.read(characterRepositoryProvider);
      final result = await repo.getCharacterById(id);
      state = switch (result) {
        Left(:final failure) => CharacterStateError(message: failure.message),
        Right(:final value) => CharacterStateLoaded(
          character: value,
          characters: characters,
        ),
      };
    }
  }
}
