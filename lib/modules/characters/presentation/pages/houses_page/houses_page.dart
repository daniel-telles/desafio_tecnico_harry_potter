import 'package:flutter/material.dart';

import '../../../../../theme/app_theme.dart';
import '../../widgets/custom_app_bar.dart';
import 'house_widget.dart';

class HousesPage extends StatelessWidget {
  const HousesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.lighterBrown,
      appBar: const CustomAppBar(title: 'Houses'),
      body: GridView.count(
        padding: const EdgeInsets.only(top: 40.0),
        childAspectRatio: 0.6,
        crossAxisCount: 2,
        children: const [
          HouseWidget(
            housePathAsset: 'assets/houses/Grifinoria.png',
            houseName: 'Gryffindor',
          ),
          HouseWidget(
              housePathAsset: 'assets/houses/Sonserina.png',
              houseName: 'Slytherin'),
          HouseWidget(
              housePathAsset: 'assets/houses/Corvinal.png',
              houseName: 'Ravenclaw'),
          HouseWidget(
              housePathAsset: 'assets/houses/Lufa-Lufa.png',
              houseName: 'Hufflepuff'),
        ],
      ),
    );
  }
}
