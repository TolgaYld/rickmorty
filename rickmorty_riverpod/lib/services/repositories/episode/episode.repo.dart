import 'package:core/rickmorty_core.dart';

abstract interface class EpisodeRepository {
  ResultFuture<List<Episode>> getEpisodes();
  ResultFuture<Episode?> getEpisodeById(int id);
}
