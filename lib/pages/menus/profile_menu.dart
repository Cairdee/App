import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/controller/profile_controller.dart'; // Import ProfileController

class ProfileMenu extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF101828),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/boy.png'),
            ),
            SizedBox(height: 16),
            Obx(() => Text(
              controller.userName.value, 
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
            SizedBox(height: 8),
            Obx(() => Text(
              controller.email.value, 
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            )),
            SizedBox(height: 16),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor Telefon'),
              subtitle: Obx(() => Text(controller.phoneNumber.value)), 
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Alamat'),
              subtitle: Obx(() => Text(controller.address.value)), 
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                controller.logout(); 
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white, 
              ),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
