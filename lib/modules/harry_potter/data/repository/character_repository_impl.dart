import 'package:desafio_tecnico_harry_potter/modules/harry_potter/data/data_sources/character_remote_datasource.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/repository/character_repository.dart';

import '../models/character_model.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteDatasource characterRemoteDatasource;

  CharacterRepositoryImpl({required this.characterRemoteDatasource});

  @override
  Future<List<CharacterDTO>> getCharacters({String? house}) async {
    final List<CharacterDTO> characters =
        await characterRemoteDatasource.getCharacters(house: house);
    if (house == null) {
      return characters;
    } else {
      return characters.where((character) => character.house == house).toList();
    }
  }
}
