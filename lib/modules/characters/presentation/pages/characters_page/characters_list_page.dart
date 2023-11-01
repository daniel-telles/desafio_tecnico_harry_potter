import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/character/character_bloc.dart';
import '../../bloc/character/character_event.dart';
import '../../bloc/character/character_state.dart';
import '../../widgets/drawer_widget/drawer_widget.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'widgets/characters_card_widget.dart';

class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF413029),
        drawer: const DrawerWidget(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xFFE1CCA2),
          ),
          centerTitle: true,
          title: const Text(
            'NotSlytherin App',
            style: TextStyle(
              fontFamily: 'HarryPotter',
              color: Color(0xFFE1CCA2),
              fontSize: 36.0,
            ),
          ),
          backgroundColor: const Color(0xFF413029),
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
                    return CharactersCardWidget(character: character);
                  });
            } else if (state is CharactersErrorState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.errorMessage,
                      style: const TextStyle(
                        color: Color(0xFFE1CCA2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE1CCA2)),
                        onPressed: () {
                          context.read<CharactersBloc>().add(FetchCharactersEvent());
                        },
                        child: const Text(
                          'Try again',
                          style: TextStyle(color: Color(0xFF413029)),
                        )),
                  ],
                ),
              );
            } else {
              return Container();
            }
          },
        ),
        bottomNavigationBar: const BottomNavigationBarWidget());
  }
}
