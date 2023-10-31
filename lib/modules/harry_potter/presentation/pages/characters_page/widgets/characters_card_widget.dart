import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/entities/character.dart';
import 'package:flutter/material.dart';

class CharactersCardWidget extends StatelessWidget {
  const CharactersCardWidget({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[100],
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          trailing: const SizedBox.shrink(),
          title: Row(
            children: [
              Text(
                character.name,
                style: const TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(width: 6.0),
              Visibility(
                visible: character.wizard,
                child: const Icon(
                  Icons.bolt_outlined,
                  size: 18.0,
                  color: Color(0xFFEDB935),
                ),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.house,
                style: const TextStyle(
                    fontFamily: 'RobotoSlab', fontWeight: FontWeight.w400),
              ),
              Text(
                character.hogwartsStudent
                    ? 'Hogwarts Student'
                    : character.hogwartsStaff
                        ? 'Hogwarts Staff'
                        : 'Ocupação desconhecida',
                style: itemsTextStyle,
              )
            ],
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(character.image),
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.30,
                  child: Image.asset(
                    'assets/custom_divider.png',
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text('Specie: ${character.species}',
                style: itemsTextStyle),
                Text('Date of birth: ${character.dateOfBirth}',
                style: itemsTextStyle),
                Text(character.wizard ? 'Wizard' : '',
                style: itemsTextStyle),
                Text('Ancestry: ${character.ancestry}',
                style: itemsTextStyle,),
                Text('Actor: ${character.actor}',
                style: itemsTextStyle),
                const SizedBox(height: 12.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle get itemsTextStyle =>
    const TextStyle(fontFamily: 'RobotoSlab', fontSize: 12.0);
