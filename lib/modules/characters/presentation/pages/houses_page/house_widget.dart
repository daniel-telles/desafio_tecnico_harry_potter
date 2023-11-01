import 'package:flutter/material.dart';

import '../../../../../theme/app_theme.dart';

class HouseWidget extends StatelessWidget {
  const HouseWidget({super.key, required this.housePathAsset, required this.houseName});

  final String housePathAsset;
  final String houseName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          housePathAsset,
        ),
        Text(
          houseName,
          style: AppTheme.textStyles.robotoSlab.copyWith(
            fontSize: 16.0,
            color: AppTheme.colors.darkBrown
          ),
        ),
      ],
    );
  }
}
