import 'package:desafio_tecnico_harry_potter/modules/harry_potter/data/data_sources/character_remote_datasource.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/repository/character_repository.dart';

import '../../domain/entities/character.dart';
import '../models/character_model.dart';

class CharacterRepositoryImpl implements CharacterRepository {
    final CharacterRemoteDatasource characterRemoteDatasource;

  CharacterRepositoryImpl(this.characterRemoteDatasource);
  @override
  Future<List<Character>> getCharacters() async {
     final characterDTOs = await characterRemoteDatasource.getCharacters();
     return characterDTOs.map((dto) => dto.toEntity()).toList();

  }
  
}