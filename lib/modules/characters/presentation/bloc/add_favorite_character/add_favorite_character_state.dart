part of 'add_favorite_character_bloc.dart';

sealed class AddFavoriteCharacterState extends Equatable {
  const AddFavoriteCharacterState();
  
  @override
  List<Object> get props => [];
}

final class AddFavoriteCharacterInitial extends AddFavoriteCharacterState {}

final class AddFavoriteCharacterSuccess extends AddFavoriteCharacterState {}

final class AddFavoriteCharacterFailure extends AddFavoriteCharacterState {
  final String error;

  const AddFavoriteCharacterFailure({required this.error});
}
