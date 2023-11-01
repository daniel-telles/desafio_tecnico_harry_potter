import 'package:flutter/material.dart';

import '../../../../../theme/app_theme.dart';
import '../../pages/houses_page/houses_page.dart';
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
                    style: AppTheme.textStyles.robotoSlab.copyWith(
                        fontSize: 16.0, color: AppTheme.colors.lighterBrown),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    'Your house',
                    style: AppTheme.textStyles.robotoSlab.copyWith(
                        fontSize: 12.0, color: AppTheme.colors.lighterBrown),
                  ),
                  const SizedBox(height: 26.0),
                  Image.asset('assets/custom_divider.png',
                      color: AppTheme.colors.lighterBrown),
                  const SizedBox(height: 24.0),
                  const DrawerItems(
                    index: 0,
                    sectionText: 'Characters',
                    icon: Icons.person_3_rounded,
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
                ],
              ),
            ),
          ],
        ));
  }
}
