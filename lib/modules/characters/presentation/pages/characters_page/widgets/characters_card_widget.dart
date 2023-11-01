import 'package:flutter/material.dart';

import '../../../../domain/entities/character.dart';
import 'expansiontile_widget.dart';

class CharactersCardWidget extends StatelessWidget {
  const CharactersCardWidget({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.yellow[100],
        child: ExpansionTileWidget(character: character));
  }
}
