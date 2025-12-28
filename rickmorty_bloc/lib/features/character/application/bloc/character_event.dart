part of 'character_bloc.dart';

@immutable
sealed class CharacterEvent {}

class CharacterEventLoadInitial extends CharacterEvent {}

class CharacterEventLoadMore extends CharacterEvent {}

class CharacterEventLoadDetail extends CharacterEvent {
  CharacterEventLoadDetail({required this.id});
  final int id;
}
