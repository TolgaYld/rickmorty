import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/favorites.notifier.dart';

final favoritesProvider = FutureProvider.autoDispose<List<Character>>((
  ref,
) async {
  final state = await ref.watch(favoritesNotifierProvider.future);
  return state.favorites;
});
