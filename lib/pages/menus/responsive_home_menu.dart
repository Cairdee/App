import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/controller/responsive_controller.dart';
import 'package:project6/pages/menus/home_menu.dart';
import 'package:project6/pages/menus/tablet_home_menu.dart';

class ResponsiveHomeMenu extends StatelessWidget {
  ResponsiveHomeMenu({Key? key}) : super(key: key);

  // Mengambil instance dari ResponsiveController
  final ResponsiveController responsiveController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      // Menentukan tampilan berdasarkan lebar layar
      if (responsiveController.isMobile()) {
        print("Rendering Mobile HomeMenu");
        return HomeMenu(); // Tampilan untuk mobile
      } else {
        print("Rendering Tablet HomeMenuResponsive");
        return HomeMenuResponsive(); // Tampilan untuk tablet
      }
    });
  }
}
