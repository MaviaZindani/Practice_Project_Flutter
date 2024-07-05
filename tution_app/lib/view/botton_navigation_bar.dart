import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tution_app/view/Bottom%20bar%20screen/class_room.dart';
import 'package:tution_app/view/Bottom%20bar%20screen/home_screen.dart';
import 'package:tution_app/view/Bottom%20bar%20screen/profile_screen.dart';

class BottonNavigationScreen extends StatefulWidget {
  const BottonNavigationScreen({super.key});
  @override
  State<BottonNavigationScreen> createState() => _BottonNavigationScreenState();
}

class _BottonNavigationScreenState extends State<BottonNavigationScreen> {
  int _currentIndex = 0;
  static List<Widget> _widgetOption = [ HomeScreen(), ProfileScreen(),ClassRoom()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOption[_currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  iconColor: Colors.black,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.person,
                  iconColor: Colors.black,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.class_,
                  iconColor: Colors.black,
                  text: 'Class room',
                ),
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
