import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/repositories/episode/episode.impl.repo.dart';

final episodeProvider = FutureProvider.autoDispose<List<Episode>>((ref) async {
  final repository = ref.watch(episodeRepositoryProvider);
  final result = await repository.getEpisodes();
  return result.fold((failure) => throw failure, (success) => success);
});

final episodeByIdProvider = FutureProvider.autoDispose.family<Episode?, int>((
  ref,
  id,
) async {
  final repository = ref.watch(episodeRepositoryProvider);
  final result = await repository.getEpisodeById(id);
  return switch (result) {
    Left(:final failure) => throw failure,
    Right(:final value) => value,
  };
});
