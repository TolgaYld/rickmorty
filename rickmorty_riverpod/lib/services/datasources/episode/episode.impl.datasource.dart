import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/network/http_adapter.dart';
import 'package:rickmorty_riverpod/services/datasources/episode/episode.datasource.dart';

final episodeDatasourceProvider = Provider.autoDispose<EpisodeDatasource>(
  (ref) => EpisodeDatasourceImpl(ref.watch(httpAdapterProvider)),
);

class EpisodeDatasourceImpl implements EpisodeDatasource {
  EpisodeDatasourceImpl(this._httpAdapter);

  final HttpAdapter _httpAdapter;
  @override
  Future<List<Episode>> getEpisodes() async {
    try {
      final response = await _httpAdapter.get(Endpoints.episodes);
      if (response.statusCode != 200) {
        throw ApiException(
          message: response.data['error'] ?? 'Unknown Error',
          statusCode: response.statusCode,
        );
      }
      final List<dynamic> data = response.data['results'];

      return [for (final element in data) EpisodeMapper.fromMap(element)];
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<Episode?> getEpisodeById(int id) async {
    try {
      final response = await _httpAdapter.get('${Endpoints.episodes}/$id');
      if (response.statusCode != 200) {
        throw ApiException(
          message: response.data['error'] ?? 'Unknown Error',
          statusCode: response.statusCode,
        );
      }
      final Map<String, dynamic> data = response.data['results'];

      return EpisodeMapper.fromMap(data);
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString(), statusCode: 500);
    }
  }
}
