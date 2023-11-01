part of 'add_favorite_character_bloc.dart';

abstract class AddFavoriteCharacterEvent extends Equatable {
  const AddFavoriteCharacterEvent();

  @override
  List<Object> get props => [];
}

class AddEvent extends AddFavoriteCharacterEvent {
final String characterId;

  const AddEvent({required this.characterId});
}
