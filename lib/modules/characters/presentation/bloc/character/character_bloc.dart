import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/get_characters_usecase.dart';
import 'character_event.dart';
import 'character_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final GetCharacterUsecase getCharacterUsecase;

  CharactersBloc({required this.getCharacterUsecase})
      : super(CharactersLoadingState()) {
    on<FetchCharactersEvent>((event, emit) async {
      try {
        final characters = await getCharacterUsecase(house: event.house);
        emit(CharactersSuccessState(characters: characters));
      } catch (e) {
        emit(CharactersErrorState(errorMessage: 'Error loading characters'));
      }
    });
  }
}
