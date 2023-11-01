import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../theme/app_theme.dart';
import '../../bloc/character/character_bloc.dart';
import '../../bloc/character/character_event.dart';
import '../../bloc/character/character_state.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/drawer_widget/drawer_widget.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'widgets/characters_card_widget.dart';

class CharactersListPage extends StatelessWidget {
  const CharactersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.colors.darkBrown,
        drawer: const DrawerWidget(),
        appBar: const CustomAppBar(
          title: 'NotSlytherin App',
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
                      style: TextStyle(
                        color: AppTheme.colors.lighterBrown,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.colors.lighterBrown),
                        onPressed: () {
                          context
                              .read<CharactersBloc>()
                              .add(FetchCharactersEvent());
                        },
                        child: Text(
                          'Try again',
                          style: AppTheme.textStyles.robotoSlab.copyWith(
                              color: AppTheme.colors.darkBrown, fontSize: 12.0),
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
