import 'package:flutter/material.dart';
import 'package:project6/pages/menus/booking_menu.dart';
import 'package:project6/pages/menus/home_menu.dart';
import 'package:project6/pages/menus/profile_menu.dart';
import 'package:project6/pages/favorite_page.dart';
import 'package:project6/pages/menus/responsive_home_menu.dart'; // Import ResponsiveHomeMenu

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _selectedIndex = 0;

  // Ganti HomeMenu dengan ResponsiveHomeMenu
  final List<Widget> _pages = [
    ResponsiveHomeMenu(),  // Menggunakan ResponsiveHomeMenu
    BookingMenuPage(),
    FavoritePage(),
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
      bottomNavigationBar: Container(
        height: 80, // Sesuaikan tinggi untuk desain melengkung
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent, // Transparan agar sesuai desain
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue, // Warna ikon terpilih
          unselectedItemColor: Colors.grey, // Warna ikon tidak terpilih
          showSelectedLabels: true,
          showUnselectedLabels: true, // Tampilkan label untuk ikon terpilih dan tidak terpilih
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
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
