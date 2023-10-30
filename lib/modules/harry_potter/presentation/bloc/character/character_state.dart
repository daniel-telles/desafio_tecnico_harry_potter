import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/entities/character.dart';
import 'package:equatable/equatable.dart';

abstract class CharactersState extends Equatable {
  final List<Character>? characters;

  const CharactersState({this.characters});
  @override
  List<Object> get props => [];
}

class CharactersLoadingState extends CharactersState {
  final String? house;

  const CharactersLoadingState({this.house});
}

class CharactersSuccessState extends CharactersState {
  const CharactersSuccessState({required this.characters});

  final List<Character> characters;

  @override
  List<Object> get props => [characters];
}

class CharactersErrorState extends CharactersState {
  const CharactersErrorState({required this.errorMessage});

  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}
