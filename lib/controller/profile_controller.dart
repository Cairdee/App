import 'package:get/get.dart';

class ProfileController extends GetxController {
  var userName = 'Jovanco Nicholas Rise'.obs;
  var email = 'jovancojojo268@gmail.com'.obs;
  var phoneNumber = '+62 821 4729 6071'.obs;
  var address = 'Jln.Gebog, Kudus, Jawa Tengah'.obs;

  void logout() {
    Get.offAllNamed('/login'); 
  }
}
