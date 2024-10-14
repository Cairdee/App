// lib/bindings/main_binding.dart
import 'package:get/get.dart';
import '../controller/bottom_nav_controller.dart';


class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }
}
