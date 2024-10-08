import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/bindings/profile_binding.dart';
import 'package:project6/controller/bottom_nav_controller.dart';
import 'package:project6/pages/kapal_pages.dart';
import 'package:project6/pages/kereta_pages.dart';
import 'package:project6/pages/login_page.dart';
import 'package:project6/pages/menus/home_menu.dart';
import 'package:project6/pages/menus/booking_menu.dart';
import 'package:project6/pages/menus/profile_menu.dart';
import 'package:project6/pages/pesawat_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomeMenu()),
        GetPage(name: '/bookings', page: () => BookingMenu()),
        GetPage(
          name: '/profile',
          page: () => ProfileMenu(),
          binding: ProfileBinding(), 
        ),
        GetPage(name: '/pesawat', page: () => PesawatPage()),
        GetPage(name: '/kapal', page: () => KapalPage()),
        GetPage(name: '/kereta', page: () => KeretaPage()),
        GetPage(name: '/main', page: () => BottomNavController()),
      ],
    );
  }
}
