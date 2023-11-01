import '../entities/character.dart';

abstract class CharacterRepository {
  Future<List<Character>> getCharacters({String? house});

  Future<void> addFavoriteCharacter({required String characterId});
}
