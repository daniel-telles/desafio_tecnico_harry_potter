import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/usecases/get_characters_usecase.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_event.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final GetCharacterUsecase getCharacterUsecase;

  CharactersBloc({required this.getCharacterUsecase}) : super(CharactersLoadingState()) {
    on<FetchCharactersEvent>((event, emit) async {
      try {
        final characters = await getCharacterUsecase();
        // final response = await dio.get('https://hp-api.onrender.com/api/characters');
        // final characters = (response.data as List).map((characterJson) => Character.fromJson(characterJson))
        // .toList();
        emit(CharactersSuccessState(characters:characters ));
      } catch (e) {
        emit(const CharactersErrorState(errorMessage: 'Erro ao carregar personagens'));
      }
    });
  }

 
  
}
