import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/repositories/character/character.impl.repo.dart';
import 'package:rickmorty_riverpod/presentation/character/application/character.notifier.dart';

final characterProvider = FutureProvider.autoDispose<List<Character>>((
  ref,
) async {
  final state = await ref.watch(characterNotifierProvider.future);
  return state.characters;
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
