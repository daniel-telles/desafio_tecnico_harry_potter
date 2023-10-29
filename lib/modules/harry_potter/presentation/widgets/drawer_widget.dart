import 'package:flutter/material.dart';

import '../pages/houses_page.dart';

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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 44.0,
                    child: Image.asset('assets/hp_glasses.png', scale: 6.0),
                  ),
                  const Text(
                    'Your name',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text(
                    'Your house',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Image.asset('assets/custom_divider.png'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HousesPage()));
                    },
                    child: const Text('Casas'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
