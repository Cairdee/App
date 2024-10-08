import 'package:get/get.dart';
import 'package:project6/controller/bottom_nav_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }
}
