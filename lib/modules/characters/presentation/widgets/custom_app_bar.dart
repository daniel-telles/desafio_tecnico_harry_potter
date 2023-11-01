import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: AppTheme.colors.lighterBrown
      ),
      backgroundColor: AppTheme.colors.darkBrown,
      centerTitle: true,
      title: Text(
        title,
        style: AppTheme.textStyles.hpFont
            .copyWith(fontSize: 36.0, color: AppTheme.colors.lighterBrown),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
