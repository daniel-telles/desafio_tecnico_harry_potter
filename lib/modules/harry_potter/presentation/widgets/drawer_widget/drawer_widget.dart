import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/pages/characters_page/characters_page.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/pages/menu_page/menu_page.dart';
import 'package:flutter/material.dart';

import '../../pages/houses_page.dart';
import 'text_button_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color(0xFFEDB935),
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
                    radius: 48.0,
                    child: Image.asset('assets/hp_glasses.png', scale: 6.0),
                  ),
                  const SizedBox(height: 14.0),
                  Text(
                    'Your witch name',
                    style: drawerTextStyle(fontSize: 18.0),
                  ),
                  Text('Your house', style: drawerTextStyle(fontSize: 12.0)),
                  const SizedBox(height: 22.0),
                  Image.asset('assets/custom_divider.png'),
                  const SizedBox(height: 20.0),
                  TextButtonWidget(
                    sectionText: 'Menu',
                    icon: Icons.menu_book_rounded,
                    route: MaterialPageRoute(
                        builder: (context) => const MenuPage()),
                  ),
                  TextButtonWidget(
                    sectionText: 'Characters',
                    icon: Icons.person_3_rounded,
                    route: MaterialPageRoute(
                      builder: (context) => const CharactersListPage(),
                    ),
                  ),
                  TextButtonWidget(
                    sectionText: 'Houses',
                    icon: Icons.other_houses_rounded,
                    route: MaterialPageRoute(
                      builder: (context) => const HousesPage(),
                    ),
                  ),
                  TextButtonWidget(
                    sectionText: 'Spells',
                    icon: Icons.bolt,
                    route: MaterialPageRoute(
                        builder: (context) => const MenuPage()),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

TextStyle drawerTextStyle(
    {double fontSize = 16.0, Color? color = Colors.black}) {
  return TextStyle(fontFamily: 'RobotoSlab', fontSize: fontSize, color: color);
}
