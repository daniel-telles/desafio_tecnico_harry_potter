import '../../domain/repository/character_repository.dart';
import '../data_sources/character_remote_datasource.dart';
import '../models/character_model.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteDatasource characterRemoteDatasource;

  CharacterRepositoryImpl({required this.characterRemoteDatasource});

  @override
  Future<List<CharacterDTO>> getCharacters({String? house}) async {
    final charactersRaw =
        await characterRemoteDatasource.getCharacters(house: house);

    final characters = charactersRaw
        .map((character) => CharacterDTO.fromJson(character))
        .toList();

    return characters;
  }
}
