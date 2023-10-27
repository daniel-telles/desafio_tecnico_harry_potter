import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_bloc.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/bloc/character_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersListWidget extends StatelessWidget {
  const CharactersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SonserinaNão.App'),
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
                  return ListTile(
                    title: Text(character.name!),
                    subtitle: Text(character.house!),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(character.image!),
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
}
