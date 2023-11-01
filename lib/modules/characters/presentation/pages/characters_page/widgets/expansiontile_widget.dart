import 'package:flutter/material.dart';

import '../../../../../../theme/app_theme.dart';
import '../../../../domain/entities/character.dart';
import 'character_infos.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        iconColor: AppTheme.colors.darkBrown,
        title: Row(
          children: [
            Text(
              character.name,
              style: AppTheme.textStyles.robotoSlab.copyWith(fontSize: 16.0),
            ),
            const SizedBox(width: 6.0),
            Visibility(
              visible: character.wizard,
              child: Icon(
                Icons.bolt_outlined,
                size: 18.0,
                color: AppTheme.colors.gryffYellow,
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character.house,
              style: AppTheme.textStyles.robotoSlab.copyWith(
                fontSize: 14.0,
              ),
            ),
            Text(
              character.hogwartsStudent
                  ? 'Hogwarts Student'
                  : character.hogwartsStaff
                      ? 'Hogwarts Staff'
                      : 'Ocupação desconhecida',
              style: AppTheme.textStyles.robotoSlab,
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
              CharacterInfos(
                character: character,
              ),
              const SizedBox(height: 12.0),
            ],
          ),
        ],
      ),
    );
  }
}
