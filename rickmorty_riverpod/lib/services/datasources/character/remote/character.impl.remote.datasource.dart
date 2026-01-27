import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/network/http_adapter.dart';
import 'package:rickmorty_riverpod/services/datasources/character/remote/character.remote.datasource.dart';

final characterRemoteDatasourceProvider =
    Provider.autoDispose<CharacterRemoteDatasource>(
      (ref) => CharacterRemoteDatasourceImpl(ref.watch(httpAdapterProvider)),
    );

class CharacterRemoteDatasourceImpl implements CharacterRemoteDatasource {
  CharacterRemoteDatasourceImpl(this._httpAdapter);

  final HttpAdapter _httpAdapter;
  @override
  Future<List<Character>> getCharacters({int page = 1}) async {
    try {
      final response = await _httpAdapter.get(
        Endpoints.characters,
        query: {'page': page},
      );
      if (response.statusCode != 200) {
        throw ApiException(
          message: response.data['error'] ?? 'Unkn own Error',
          statusCode: response.statusCode,
        );
      }

      final List<dynamic> data = response.data['results'];

      return [for (final element in data) CharacterMapper.fromMap(element)];
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString(), statusCode: 500);
    }
  }

  @override
  Future<Character?> getCharacterById(int id) async {
    try {
      final response = await _httpAdapter.get('${Endpoints.characters}/$id');
      if (response.statusCode != 200) {
        throw ApiException(
          message: response.data['error'] ?? 'Unknown Error',
          statusCode: response.statusCode,
        );
      }
      final Map<String, dynamic> data = response.data;

      return CharacterMapper.fromMap(data);
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(message: e.toString(), statusCode: 500);
    }
  }
}
