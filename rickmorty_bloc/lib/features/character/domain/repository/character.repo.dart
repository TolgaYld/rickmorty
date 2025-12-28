import 'package:core/rickmorty_core.dart';

abstract interface class CharacterRepository {
  ResultFuture<List<Character>> getCharacters({int page = 1});
  ResultFuture<Character?> getCharacterById(int id);
}
