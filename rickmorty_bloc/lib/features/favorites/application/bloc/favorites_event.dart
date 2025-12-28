part of 'favorites_bloc.dart';

@immutable
sealed class FavoritesEvent {}

class FavoritesEventLoad extends FavoritesEvent {}

class FavoritesEventToggle extends FavoritesEvent {
  FavoritesEventToggle({required this.character});
  final Character character;
}
