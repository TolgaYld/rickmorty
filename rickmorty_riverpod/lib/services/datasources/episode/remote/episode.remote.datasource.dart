import 'package:core/rickmorty_core.dart';

abstract interface class EpisodeRemoteDatasource {
  Future<List<Episode>> getEpisodes();
  Future<Episode?> getEpisodeById(int id);
}
