import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;
  final String currentScreen;

  const BottomNavbar(
      {super.key,
      required this.selectedIndex,
      required this.onItemTapped,
      required this.currentScreen});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: '???',
        )
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: (selectedIndex) {
        switch (currentScreen) {
          case '/':
            if (selectedIndex == 1) {
              context.go('/profile');
            }
            break;
          case '/detail':
            if (selectedIndex == 1) {
              context.push('/profile');
            }
            break;
          case '/profile':
            if (selectedIndex == 0) {
              Navigator.pop(context);
              print(selectedIndex);
            }
            break;
          default:
            onItemTapped(selectedIndex);
        }
      },
    );
  }
}
