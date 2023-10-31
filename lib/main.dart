import 'package:desafio_tecnico_harry_potter/modules/harry_potter/data/data_sources/character_remote_datasource.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/data/repository/character_repository_impl.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/usecases/get_characters_usecase.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/houses/bloc/houses_bloc.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/pages/characters_page/characters_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'modules/harry_potter/presentation/bloc/character/character_bloc.dart';
import 'modules/harry_potter/presentation/bloc/character/character_event.dart';

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
      title: 'Sonserina Não',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
