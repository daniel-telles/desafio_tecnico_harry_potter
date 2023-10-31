import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/character/character_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

import '../../../bloc/character/character_event.dart';
import '../../../bloc/character/character_state.dart';
import '../../../bloc/houses/bloc/houses_bloc.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, selectedIndex) {
        return BlocBuilder<HousesBloc, int>(
          builder: (context, index) {
            return Theme(
              data: ThemeData(splashColor: Colors.transparent),
              child: BottomNavigationBar(
                currentIndex: index,
                onTap: (index) {
                  switch (index) {
                    case 0:
                      context.read<HousesBloc>().add(HousesEvent.all);
                      context
                          .read<CharactersBloc>()
                          .add(ChangeHouseEvent(house: null));
                      break;
                    case 1:
                      context.read<HousesBloc>().add(HousesEvent.gryffindor);
                      context
                          .read<CharactersBloc>()
                          .add(ChangeHouseEvent(house: 'Gryffindor'));
                      break;
                    case 2:
                      context.read<HousesBloc>().add(HousesEvent.slytherin);
                      context
                          .read<CharactersBloc>()
                          .add(ChangeHouseEvent(house: 'Slytherin'));
                      break;
                    case 3:
                      context.read<HousesBloc>().add(HousesEvent.ravenclaw);
                      context
                          .read<CharactersBloc>()
                          .add(ChangeHouseEvent(house: 'Ravenclaw'));
                      break;
                    case 4:
                      context.read<HousesBloc>().add(HousesEvent.hufflepuff);
                      context
                          .read<CharactersBloc>()
                          .add(ChangeHouseEvent(house: 'Hufflepuff'));
                    default:
                  }
                },
                backgroundColor: const Color(0xFF413029),
                unselectedItemColor: Colors.yellow[100],
                selectedItemColor: const Color(0xFFD88300),
                type: BottomNavigationBarType.fixed,
                selectedLabelStyle: itemsTextStyle,
                unselectedLabelStyle: itemsTextStyle,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'All',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(LineIcons.fire), label: 'Gryffindor'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.water), label: 'Slytherin'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.air_rounded), label: 'Ravenclaw'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.public), label: 'Hufflepuff'),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

TextStyle get itemsTextStyle =>
    const TextStyle(fontFamily: 'RobotoSlab', fontSize: 11.0);
