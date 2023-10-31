import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/usecases/get_characters_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'character_event.dart';
import 'character_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final GetCharacterUsecase getCharacterUsecase;

  CharactersBloc({required this.getCharacterUsecase})
      : super(const CharactersLoadingState()) {
    on<FetchCharactersEvent>((event, emit) async {
      try {
        final characters = await getCharacterUsecase(house: event.house);
        emit(CharactersSuccessState(characters: characters));
      } catch (e) {
        emit(const CharactersErrorState(
            errorMessage: 'Erro ao carregar personagens'));
      }
    });

    on<ChangeHouseEvent>((event, emit) async {
      try {
        final characters = await getCharacterUsecase(house: event.house);
        emit(CharactersSuccessState(characters: characters));
      } catch (e) {
        emit(const CharactersErrorState(
            errorMessage: 'Erro ao carregar personagens'));
      }
    });
  }
}
