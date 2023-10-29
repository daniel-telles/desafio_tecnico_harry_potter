import 'package:desafio_tecnico_harry_potter/modules/harry_potter/domain/entities/character.dart';
import 'package:flutter/material.dart';

class CharactersCardWidget extends StatelessWidget {
  const CharactersCardWidget({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          trailing: const SizedBox.shrink(),
          title: Text(
            character.name!,
            style: const TextStyle(
                fontFamily: 'RobotoSlab',
                fontSize: 16.0,
                fontWeight: FontWeight.normal),
          ),
          subtitle: Text(
            character.house!,
            style: const TextStyle(
                fontFamily: 'RobotoSlab', fontWeight: FontWeight.w400),
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(character.image!),
          ),
          children: const [
            Text('oi'),
          ],
        ),
      ),
    );
  }
}
