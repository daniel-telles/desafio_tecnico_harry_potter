import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget(
      {super.key, required this.sectionText, required this.route, required this.icon});

  final String sectionText;
  final MaterialPageRoute route;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
        Navigator.push(context, route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon,
          color: const Color(0xFFEEBA30)),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            sectionText,
            style: drawerTextStyle(),
          ),
        ],
      ),
    );
  }
}

TextStyle drawerTextStyle(
    {double fontSize = 16.0, Color? color = const Color(0xFFEEBA30)}) {
  return TextStyle(fontFamily: 'RobotoSlab', fontSize: fontSize, color: color);
}
