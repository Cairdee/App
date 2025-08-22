import 'package:get/get.dart';
import 'package:project6/controller/profile_controller.dart'; // Pastikan path-nya benar

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}

