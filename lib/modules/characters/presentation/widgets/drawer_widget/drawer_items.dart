import 'package:flutter/material.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems(
      {super.key,
      required this.sectionText,
      required this.route,
      required this.icon,
      required this.index});

  final String sectionText;
  final MaterialPageRoute route;
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
        Navigator.push(context, widget.route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(widget.icon,
              color: isSelected
                  ? const Color(0xFFFFC500)
                  : const Color(0xFFE1CCA2)),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            widget.sectionText,
            style: isSelected
                ? drawerTextStyle(color: const Color(0xFFFFC500))
                : drawerTextStyle(),
          ),
        ],
      ),
    );
  }
}

TextStyle drawerTextStyle(
    {double fontSize = 16.0, Color? color = const Color(0xFFE1CCA2)}) {
  return TextStyle(fontFamily: 'RobotoSlab', fontSize: fontSize, color: color);
}
