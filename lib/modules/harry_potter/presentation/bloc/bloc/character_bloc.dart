import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_event.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/character.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final Dio dio;

  CharactersBloc({required this.dio}) : super(CharactersLoadingState()) {
    on<FetchCharactersEvent>((event, emit) async {
      try {
        final response = await dio.get('https://hp-api.onrender.com/api/characters');
        final characters = (response.data as List).map((characterJson) => Character.fromJson(characterJson))
        .toList();
        emit(CharactersSuccessState(characters:characters ));
      } catch (e) {
        emit(CharactersErrorState(errorMessage: 'Erro ao carregar personagens'));
      }
    });
  }

 
  
}
