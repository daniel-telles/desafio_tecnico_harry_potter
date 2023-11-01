import 'package:dio/dio.dart';

import '../../../../core/constants/hp_api_url.dart';

class CharacterRemoteDatasource {
  final Dio dio;

  CharacterRemoteDatasource(this.dio);

  Future<List<Map<String, dynamic>>> getCharacters({String? house}) async {
    final url =
        house != null ? '$harryPotterAPIUrl/house/$house' : harryPotterAPIUrl;

    final response = await dio.get(url);
    return List<Map<String, dynamic>>.from(response.data);
  }
}
