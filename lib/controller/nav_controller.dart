import 'package:get/get.dart';

class NavController extends GetxController {
  void goToHome() {
    Get.offAllNamed('/home');
  }

  void goToBookings() {
    Get.offAllNamed('/bookings');
  }

  void goToProfile() {
    Get.offAllNamed('/profile');
  }
}
