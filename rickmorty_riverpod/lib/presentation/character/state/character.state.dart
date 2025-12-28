import 'package:core/rickmorty_core.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'character.state.mapper.dart';

@MappableClass()
sealed class CharacterState with CharacterStateMappable {
  const CharacterState();
}

@MappableClass()
class CharacterStateInitial extends CharacterState
    with CharacterStateInitialMappable {
  const CharacterStateInitial();
}

@MappableClass()
class CharacterStateLoading extends CharacterState
    with CharacterStateLoadingMappable {
  const CharacterStateLoading();
}

@MappableClass()
class CharacterStateLoaded extends CharacterState
    with CharacterStateLoadedMappable {
  const CharacterStateLoaded({
    required this.characters,
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

@MappableClass()
class CharacterStateError extends CharacterState
    with CharacterStateErrorMappable {
  const CharacterStateError({required this.message});
  final String message;
}
