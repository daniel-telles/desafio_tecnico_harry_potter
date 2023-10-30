import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/entities/character.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/repository/character_repository.dart';

class GetCharacterUsecase {
  final CharacterRepository characterRepository;

  GetCharacterUsecase({required this.characterRepository});

  Future<List<Character>> call({String? house}) async {
    return await characterRepository.getCharacters(house: house);
  }
}
