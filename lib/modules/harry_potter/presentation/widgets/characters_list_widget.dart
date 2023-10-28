import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_bloc.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/character.dart';
import 'character_information_popup.dart';

class CharactersListWidget extends StatelessWidget {
  const CharactersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.60,
          child: const Column(
            children: [
              Text('Casas'),
            ],
          )),
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
                    child: ListTile(
                      title: Text(
                        character.name!,
                        style: const TextStyle(
                            fontFamily: 'RobotoSlab', fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      ),
                      subtitle: Text(
                        character.house!,
                        style: const TextStyle(
                          fontFamily: 'RobotoSlab',
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(character.image!),
                      ),
                    ),
                  );
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
