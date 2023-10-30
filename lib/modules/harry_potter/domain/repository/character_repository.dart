import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/entities/character.dart';

abstract class CharacterRepository {
  Future<List<Character>> getCharacters({String? house});
  
}
