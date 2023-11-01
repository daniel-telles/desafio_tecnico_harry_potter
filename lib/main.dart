import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/characters/data/data_sources/character_remote_datasource.dart';
import 'modules/characters/data/repository/character_repository_impl.dart';
import 'modules/characters/domain/usecases/get_characters_usecase.dart';
import 'modules/characters/presentation/bloc/character/character_bloc.dart';
import 'modules/characters/presentation/bloc/character/character_event.dart';
import 'modules/characters/presentation/bloc/houses/bloc/houses_bloc.dart';
import 'modules/characters/presentation/pages/characters_page/characters_page.dart';

void main() {
  runApp(HarryPotterApp());
}

class HarryPotterApp extends StatelessWidget {
  HarryPotterApp({super.key});

  final Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => CharactersBloc(
                  getCharacterUsecase: GetCharacterUsecase(
                      characterRepository: CharacterRepositoryImpl(
                          characterRemoteDatasource:
                              CharacterRemoteDatasource(dio))))
                ..add(FetchCharactersEvent()),
              child: const CharactersListPage()),
          BlocProvider(create: (context) => HousesBloc()..add(HousesEvent.all))
        ],
        child: const CharactersListPage(),
      ),
    );
  }
}
