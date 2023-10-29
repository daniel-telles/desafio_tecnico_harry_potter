import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_bloc.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_event.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/pages/characters_page/characters_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    final CharactersBloc charactersBloc = CharactersBloc(dio: dio);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sonserina Não',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
          create: (context) => charactersBloc..add(FetchCharactersEvent()),
          child: const CharactersListPage()),
    );
  }
}
