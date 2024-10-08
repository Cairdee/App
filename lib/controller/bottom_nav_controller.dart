import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/pages/menus/booking_menu.dart';
import 'package:project6/pages/menus/home_menu.dart';
import 'package:project6/pages/menus/profile_menu.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeMenu(),
    BookingMenu(),
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
         items: [
         BottomNavigationBarItem(
            icon: Image.asset(
              'assets/iconflight.png', // Gambar untuk Flights
              width: 17,
              height: 17,
            ),
            label: 'Flights',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/booking.png', // Gambar untuk Flights
              width: 17,
              height: 17,
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/user.png', // Gambar untuk Flights
              width: 17,
              height: 17,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
