import '../repository/character_repository.dart';

class AddFavoriteCharacterUsecase {
  final CharacterRepository characterRepository;

  AddFavoriteCharacterUsecase(this.characterRepository);

  Future<void> call({required String characterId}) async {
    return await characterRepository.addFavoriteCharacter(
        characterId: characterId);
  }
}
