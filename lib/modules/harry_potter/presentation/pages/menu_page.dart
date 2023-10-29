import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Menu'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Grifinoria.png',
                  ),
                  const Text('Grifinória'),
                ],
              ),
              spaceBetweenContainers,
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Sonserina.png',
                  ),
                  const Text('Sonserina'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Corvinal.png',
                  ),
                  const Text('Cornival'),
                ],
              ),
              spaceBetweenContainers,
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Lufa-Lufa.png',
                  ),
                  const Text('Lufa-Lufa'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

SizedBox get spaceBetweenContainers => const SizedBox(width: 15.0);
