import 'package:flutter/material.dart';

class HousesPage extends StatelessWidget {
  const HousesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          'NotSlytherin App',
          style: TextStyle(
            fontFamily: 'HarryPotter',
            color: Colors.white,
            fontSize: 36.0,
          ),
        ),
        backgroundColor: const Color(0xFFAE0001),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Container(
          child: GridView.count(
            childAspectRatio: 0.6,
            crossAxisCount: 2,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Grifinoria.png',
                  ),
                  const Text('Grifinória'),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Sonserina.png',
                  ),
                  const Text('Sonserina'),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    'assets/houses/Corvinal.png',
                  ),
                  const Text('Cornival'),
                ],
              ),
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
        ),
      ),
    );
  }
}
