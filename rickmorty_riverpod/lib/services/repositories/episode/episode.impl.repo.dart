import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/datasources/episode/episode.datasource.dart';
import 'package:rickmorty_riverpod/services/datasources/episode/episode.impl.datasource.dart';
import 'package:rickmorty_riverpod/services/repositories/episode/episode.repo.dart';

final episodeRepositoryProvider = Provider.autoDispose<EpisodeRepository>(
  (ref) => EpisodeRepositoryImpl(ref.watch(episodeDatasourceProvider)),
);

class EpisodeRepositoryImpl implements EpisodeRepository {
  EpisodeRepositoryImpl(this._datasource);
  final EpisodeDatasource _datasource;
  @override
  ResultFuture<Episode?> getEpisodeById(int id) async {
    try {
      final result = await _datasource.getEpisodeById(id);
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<List<Episode>> getEpisodes() async {
    try {
      final result = await _datasource.getEpisodes();
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
