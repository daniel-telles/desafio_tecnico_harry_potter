import 'package:dio/dio.dart';

import '../../../../core/constants/hp_api_url.dart';
import '../models/character_model.dart';

class CharacterRemoteDatasource {
  final Dio dio;

  CharacterRemoteDatasource(this.dio);

  Future<List<CharacterDTO>> getCharacters({String? house}) async {
    final response = await dio.get(harryPotterAPIUrl);
    List<CharacterDTO> characters = (response.data as List)
        .map((character) => CharacterDTO.fromJson(character))
        .toList();
    if (house != null) {
      characters =
          characters.where((character) => character.house == house).toList();
    }
    return characters;
  }
}
