import 'package:get/get.dart';

class ProfileController extends GetxController {
  // Contoh data profil user yang akan ditampilkan
  var userProfile = UserProfile(
    name: 'John Doe',
    email: 'johndoe@gmail.com',
    phoneNumber: '123-456-7890',
    photoUrl: 'https://via.placeholder.com/150',
  ).obs;

}

class UserProfile {
  String name;
  String email;
  String phoneNumber;
  String? photoUrl;

  UserProfile({
    required this.name,
    required this.email,
    required this.phoneNumber,
    this.photoUrl,
  });
}
