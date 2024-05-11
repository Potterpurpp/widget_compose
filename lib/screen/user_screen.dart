import 'package:flutter/material.dart';
import 'package:wiget_compose/widget/compound/bottomNavbar/bottom_navbar.dart';

class UserScreenState extends State<UserScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          children: [Text("User Profile")],
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        selectedIndex: _selectedIndex,
        onItemTapped: (int index) {
          setState(() {
            _selectedIndex = index;

            print(_selectedIndex);
          });
        },
        currentScreen: '/profile',
      ),
    );
  }
}

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});
  @override
  State<UserScreen> createState() => UserScreenState();
}
