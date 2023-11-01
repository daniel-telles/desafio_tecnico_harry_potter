import 'package:flutter/material.dart';

import '../../../../../theme/app_theme.dart';
import '../../pages/characters_page/characters_list_page.dart';
import '../../pages/favorites_characters_page/favorites_characters_page.dart';
import '../../pages/houses_page.dart';
import 'drawer_items.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppTheme.colors.gryffRed,
        width: MediaQuery.of(context).size.width * 0.60,
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.colors.lighterYellow,
                    radius: 48.0,
                    child: Image.asset(
                      'assets/hp_glasses.png',
                      scale: 6.0,
                    ),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    'Your witch name',
                    style: drawerTextStyle(fontSize: 18.0),
                  ),
                  Text('Your house', style: drawerTextStyle(fontSize: 12.0)),
                  const SizedBox(height: 26.0),
                  Image.asset('assets/custom_divider.png',
                      color: AppTheme.colors.lighterBrown),
                  const SizedBox(height: 24.0),
                  DrawerItems(
                    index: 0,
                    sectionText: 'Characters',
                    icon: Icons.person_3_rounded,
                    route: MaterialPageRoute(
                      builder: (context) => const CharactersListPage(),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  DrawerItems(
                    index: 1,
                    sectionText: 'Houses',
                    icon: Icons.house_rounded,
                    route: MaterialPageRoute(
                      builder: (context) => const HousesPage(),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  DrawerItems(
                    index: 2,
                    sectionText: 'Spells',
                    icon: Icons.bolt,
                    route: MaterialPageRoute(
                        builder: (context) => const HousesPage()),
                  ),
                  const SizedBox(height: 5.0),
                  DrawerItems(
                    index: 3,
                    sectionText: 'Favorites',
                    icon: Icons.favorite_rounded,
                    route: MaterialPageRoute(
                        builder: (context) => const FavoritesCharactersPage()),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

TextStyle drawerTextStyle(
    {double fontSize = 16.0, Color? color = const Color(0xFFE1CCA2)}) {
  return TextStyle(fontFamily: 'RobotoSlab', fontSize: fontSize, color: color);
}
