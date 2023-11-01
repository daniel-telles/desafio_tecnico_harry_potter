import 'package:flutter/material.dart';

class HousesPage extends StatelessWidget {
  const HousesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1CCA2),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFFE1CCA2),
        ),
        centerTitle: true,
        title: const Text(
          'Houses',
          style: TextStyle(
            fontFamily: 'HarryPotter',
            color: Color(0xFFE1CCA2),
            fontSize: 36.0,
          ),
        ),
        backgroundColor: const Color(0xFF413029),
      ),
      body: GridView.count(
        padding: const EdgeInsets.only(top: 40.0),
        childAspectRatio: 0.6,
        crossAxisCount: 2,
        children: [
          Column(
            children: [
              Image.asset(
                'assets/houses/Grifinoria.png',
              ),
              Text(
                'Grifinória',
                style: housesNameTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/houses/Sonserina.png',
              ),
              Text(
                'Sonserina',
                style: housesNameTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/houses/Corvinal.png',
              ),
              Text(
                'Cornival',
                style: housesNameTextStyle,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/houses/Lufa-Lufa.png',
              ),
              Text(
                'Lufa-Lufa',
                style: housesNameTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextStyle get housesNameTextStyle => const TextStyle(
    fontFamily: 'RobotoSlab', fontSize: 16.0, color: Color(0xFF413029));
