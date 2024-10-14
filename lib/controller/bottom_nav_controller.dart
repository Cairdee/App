import 'package:flutter/material.dart';
import 'package:project6/pages/menus/booking_menu.dart';
import 'package:project6/pages/menus/home_menu.dart';
import 'package:project6/pages/menus/profile_menu.dart';
import 'package:project6/pages/favorite_page.dart'; // Import Favorites Page

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeMenu(),
    BookingMenuPage(),
    FavoritePage(), // Add Favorites Page here
    ProfileMenu(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active), 
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule), 
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // Use Icon for Favorites
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Use Icon for Profile
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
