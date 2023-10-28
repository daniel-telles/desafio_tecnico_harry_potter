import 'package:flutter/material.dart';

import '../../domain/entities/character.dart';

class CharacterInformationPopup extends StatelessWidget {
  const CharacterInformationPopup({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.05,
      child: AlertDialog(
        backgroundColor: Colors.red,
        title: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.30,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              children: [
                SizedBox(
                  child: Image.network(character.image!),
                ),
                Text(character.name!),
                Text('Ator: ${character.actor!}'),
                Text(character.patronus!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
