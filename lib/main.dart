import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/controller/responsive_controller.dart';
import 'package:project6/pages/login_page.dart';
import 'package:project6/pages/menus/responsive_home_menu.dart';
import 'package:project6/bindings/profile_binding.dart';
import 'package:project6/pages/favorite_page.dart';
import 'package:project6/pages/menus/booking_menu.dart';
import 'package:project6/pages/menus/profile_menu.dart';
import 'package:project6/controller/bottom_nav_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // Inisialisasi ResponsiveController
  final ResponsiveController responsiveController = Get.put(ResponsiveController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ProfileBinding(),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: () => LoginPage()),
        GetPage(name: '/main', page: () => BottomNavController()),
        GetPage(name: '/bookings', page: () => BookingMenuPage()),
        GetPage(name: '/profile', page: () => ProfileMenu(), binding: ProfileBinding()),
        GetPage(name: '/favorites', page: () => FavoritePage()),
      ],
      // LayoutBuilder untuk mendeteksi perubahan lebar layar
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            responsiveController.updateScreenWidth(constraints.maxWidth);
            return child!;
          },
        );
      },
    );
  }
}
