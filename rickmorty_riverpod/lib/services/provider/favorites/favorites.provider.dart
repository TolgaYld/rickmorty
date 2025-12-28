import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/repositories/favorites/favorites.impl.repo.dart';

final favoritesProvider = FutureProvider.autoDispose<List<Character>>((
  ref,
) async {
  final repository = ref.watch(favoritesRepositoryProvider);
  final result = await repository.getFavorites();
  return result.fold((failure) => throw failure, (success) => success);
});
