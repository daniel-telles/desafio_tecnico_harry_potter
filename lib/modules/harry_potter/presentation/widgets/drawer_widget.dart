import 'package:flutter/material.dart';

import '../pages/houses_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width * 0.60,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFEDB935),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage(
                      'assets/Pomo de ouro.png',
                    ),
                    radius: 42.0,
                  ),
                  Text('Your name'),
                  Text('Your house'),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HousesPage()));
              },
              child: const Text('Casas'),
            ),
          ],
        ));
  }
}
