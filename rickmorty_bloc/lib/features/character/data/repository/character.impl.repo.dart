import 'package:core/rickmorty_core.dart';
import 'package:rickmorty_bloc/features/character/data/datasources/remote/character.remote.datasource.dart';
import 'package:rickmorty_bloc/features/character/domain/repository/character.repo.dart';

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
