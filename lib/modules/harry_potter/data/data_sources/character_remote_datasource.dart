import 'package:dio/dio.dart';

import '../models/character_model.dart';

class CharacterRemoteDatasource {
  final Dio dio;

  CharacterRemoteDatasource(this.dio);

  Future<List<CharacterDTO>> getCharacters() async {
    final response =
        await dio.get('https://hp-api.onrender.com/api/characters');
    return (response.data as List)
        .map((character) => CharacterDTO.fromJson(character))
        .toList();
  }
}
