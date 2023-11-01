import '../entities/character.dart';
import '../repository/character_repository.dart';

class GetCharacterUsecase {
  final CharacterRepository characterRepository;

  GetCharacterUsecase({required this.characterRepository});

  Future<List<Character>> call({String? house}) async {
    return await characterRepository.getCharacters(house: house);
  }
}
