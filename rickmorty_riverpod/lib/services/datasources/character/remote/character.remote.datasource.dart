import 'package:core/rickmorty_core.dart';

abstract interface class CharacterRemoteDatasource {
  Future<List<Character>> getCharacters({int page = 1});
  Future<Character?> getCharacterById(int id);
}
