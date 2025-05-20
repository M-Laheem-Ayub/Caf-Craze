// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyBottomNavbar extends StatelessWidget {
  const MyBottomNavbar({
    super.key,
    required this.selectedNavbarItemIndex,
    required this.setNavbarItemIndex,
  });
  final int selectedNavbarItemIndex;
  final Function(int) setNavbarItemIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      backgroundColor: Color(0xff0c0f14),
      selectedItemColor: Color(0xffD17842),
      unselectedItemColor: Color(0xff4E5053),
      currentIndex: selectedNavbarItemIndex,
      onTap: (index) {
        setNavbarItemIndex(index);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
      ],
    );
  }
}
