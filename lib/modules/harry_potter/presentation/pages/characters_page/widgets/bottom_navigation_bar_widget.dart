import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF351113),
      unselectedItemColor: Colors.yellow[100],
      selectedItemColor: const Color(0xFFD88300),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
                    fontFamily: 'RobotoSlab'),
      unselectedLabelStyle: const TextStyle(
                    fontFamily: 'RobotoSlab', fontWeight: FontWeight.w400),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'All'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Gryffindor'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Slytherin'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Ravenclaw'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Hufflepuff'),
      ],
    );
  }
}
