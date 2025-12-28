import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/repositories/character/character.impl.repo.dart';

final characterProvider = FutureProvider.autoDispose<List<Character>>((
  ref,
) async {
  final repository = ref.watch(characterRepositoryProvider);
  final result = await repository.getCharacters();
  return result.fold((failure) => throw failure, (success) => success);
});

final characterByIdProvider = FutureProvider.autoDispose
    .family<Character?, int>((ref, id) async {
      final repository = ref.watch(characterRepositoryProvider);
      final result = await repository.getCharacterById(id);
      return switch (result) {
        Left(:final failure) => throw failure,
        Right(:final value) => value,
      };
    });
