import 'package:flutter/material.dart';

import '../../../../../../theme/app_theme.dart';
import '../../../../domain/entities/character.dart';

class CharacterInfos extends StatelessWidget {
  final Character character;

  const CharacterInfos({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> characterData = [
      {'Specie': character.species},
      {'Date of birth': character.dateOfBirth},
      {'Wizard': character.wizard ?'Yes' : 'No'},
      {'Ancestry': character.ancestry},
      {'Actor': character.actor},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: characterData
          .map(
            (data) => Text(
              '${data.keys.first}: ${data.values.first}',
              style: AppTheme.textStyles.robotoSlab,
            ),
          )
          .toList(),
    );
  }
}
