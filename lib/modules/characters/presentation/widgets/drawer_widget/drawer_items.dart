import 'package:flutter/material.dart';

import '../../../../../theme/app_theme.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems(
      {super.key,
      required this.sectionText,
      this.route,
      required this.icon,
      required this.index});

  final String sectionText;
  final MaterialPageRoute? route;
  final IconData icon;
  final int index;

  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isSelected = _selectedIndex == widget.index;
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedIndex = widget.index;
        });
        Navigator.pop(context);
        Navigator.push(context, widget.route!);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(widget.icon,
              color: isSelected
                  ? AppTheme.colors.gryffYellow
                  : AppTheme.colors.lighterBrown),
          const SizedBox(
            width: 10.0,
          ),
          Text(widget.sectionText, style: drawerTextStyle(isSelected)),
        ],
      ),
    );
  }
}

TextStyle drawerTextStyle(bool isSelected) {
  return AppTheme.textStyles.robotoSlab.copyWith(
      fontSize: 16,
      color: isSelected
          ? AppTheme.colors.gryffYellow
          : AppTheme.colors.lighterBrown);
}
