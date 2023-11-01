import 'package:equatable/equatable.dart';

import '../../../domain/entities/character.dart';

abstract class CharactersState extends Equatable {}

class CharactersLoadingState extends CharactersState {
  @override
  List<Object?> get props => [];
}

class CharactersSuccessState extends CharactersState {
  CharactersSuccessState({required this.characters});

  final List<Character> characters;

  @override
  List<Object> get props => [characters];
}

class CharactersErrorState extends CharactersState {
  CharactersErrorState({required this.errorMessage});

  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}
