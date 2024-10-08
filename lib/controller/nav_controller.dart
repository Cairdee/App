import 'package:get/get.dart';

class NavController extends GetxController {
  void goToLogin() {
    Get.offAllNamed('/login');
  }

  void goToHome() {
    Get.offAllNamed('/main'); 
  }

  void goToPesawat() {
    Get.toNamed('/pesawat'); 
  }

  void goToKapal() {
    Get.toNamed('/kapal');
  }

  void goToKereta() {
    Get.toNamed('/kereta');
  }
  
}
