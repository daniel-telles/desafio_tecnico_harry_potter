import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/character/character_bloc.dart';
import '../../bloc/character/character_state.dart';
import '../../widgets/drawer_widget/drawer_widget.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'widgets/characters_card_widget.dart';

class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF351113),
        drawer: const DrawerWidget(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xFFD88300),
          ),
          centerTitle: true,
          title: const Text(
            'NotSlytherin App',
            style: TextStyle(
              fontFamily: 'HarryPotter',
              color: Color(0xFFD88300),
              fontSize: 36.0,
            ),
          ),
          backgroundColor: const Color(0xFF351113),
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
                child: Text(state.errorMessage),
              );
            } else {
              return Container();
            }
          },
        ),
        bottomNavigationBar: const BottomNavigationBarWidget());
  }
}
