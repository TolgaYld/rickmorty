import 'package:core/rickmorty_core.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'character.state.mapper.dart';

@MappableClass()
class CharacterState with CharacterStateMappable {
  const CharacterState({
    this.characters = const [],
    this.currentPage = 1,
    this.hasReachedMax = false,
    this.isFetchingMore = false,
    this.character,
  });

  final List<Character> characters;
  final int currentPage;
  final bool hasReachedMax;
  final bool isFetchingMore;
  final Character? character;
}
