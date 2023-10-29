import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_bloc.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/character.dart';
import '../widgets/character_information_popup.dart';
import '../widgets/characters_card_widget.dart';
import '../widgets/drawer_widget.dart';

class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          'NotSlytherin App',
          style: TextStyle(
            fontFamily: 'HarryPotter',
            color: Colors.white,
            fontSize: 36.0,
          ),
        ),
        backgroundColor: const Color(0xFFAE0001),
      ),
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CharactersSuccessState) {
            return ListView.builder(
                itemCount: state.characters.length,
                itemBuilder: (context, index) {
                  final character = state.characters[index];
                  return InkWell(
                      onTap: () => showPopUp(context, character),
                      child: CharactersCardWidget(character: character));
                });
          } else if (state is CharactersErrorState) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  void showPopUp(BuildContext context, Character character) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CharacterInformationPopup(character: character);
        });
  }
}
