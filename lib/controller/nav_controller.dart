import 'package:get/get.dart';

class NavController extends GetxController {
  void goToLogin() {
    Get.offAllNamed('/login'); // Navigate to Login Page
  }

  void goToHome() {
    Get.offAllNamed('/main'); // Go to the Bottom Navigation controller (main section)
  }

  void goToPesawat() {
    Get.toNamed('/pesawat'); // Example of navigating to a specific ticket type page
  }

  void goToKapal() {
    Get.toNamed('/kapal');
  }

  void goToKereta() {
    Get.toNamed('/kereta');
  }
  
}
