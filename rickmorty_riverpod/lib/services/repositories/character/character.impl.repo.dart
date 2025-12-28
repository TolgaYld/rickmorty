import 'package:core/rickmorty_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/services/datasources/character/remote/character.datasource.dart';
import 'package:rickmorty_riverpod/services/datasources/character/remote/character.impl.datasource.dart';
import 'package:rickmorty_riverpod/services/repositories/character/character.repo.dart';

final characterRepositoryProvider = Provider.autoDispose<CharacterRepository>(
  (ref) => CharacterRepositoryImpl(ref.watch(characterDatasourceProvider)),
);

class CharacterRepositoryImpl implements CharacterRepository {
  CharacterRepositoryImpl(this._datasource);
  final CharacterDatasource _datasource;
  @override
  ResultFuture<Character?> getCharacterById(int id) async {
    try {
      final result = await _datasource.getCharacterById(id);
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }

  @override
  ResultFuture<List<Character>> getCharacters({int page = 1}) async {
    try {
      final result = await _datasource.getCharacters(page: page);
      return Right(result);
    } on ApiException catch (e) {
      return Left(ApiFailure.fromException(e));
    }
  }
}
