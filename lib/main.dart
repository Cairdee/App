import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/menus/home_menu.dart';
import 'pages/menus/booking_menu.dart';
import 'pages/menus/profile_menu.dart';
import 'pages/login_page.dart';


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
        GetPage(name: '/profile', page: () => ProfileMenu()),
      ],
    );
  }
}
