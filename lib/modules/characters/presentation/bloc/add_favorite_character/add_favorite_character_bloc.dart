
import 'package:desafio_tecnico_harry_potter/modules/characters/domain/usecases/add_favorite_character_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_favorite_character_event.dart';
part 'add_favorite_character_state.dart';

class AddFavoriteCharacterBloc extends Bloc<AddFavoriteCharacterEvent, AddFavoriteCharacterState> {
 final AddFavoriteCharacterUsecase addFavoriteCharacterUsecase;
  AddFavoriteCharacterBloc({required this.addFavoriteCharacterUsecase}) : super(AddFavoriteCharacterInitial()) {
    on<AddEvent>((event, emit) async {
      try {
        final favoriteCharacter = await addFavoriteCharacterUsecase(characterId: event.characterId);
        emit(AddFavoriteCharacterSuccess());
      } catch (e) {
        emit(const AddFavoriteCharacterFailure(error: 'Failed to add character to favorites.'));
        
      }
      
    });
  }
}
