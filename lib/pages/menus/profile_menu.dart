import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/controller/profile_controller.dart';

class ProfileMenu extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
  title: Text(
    'Profile', // Menggunakan judul dari My Booking
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  ),
  backgroundColor: Color(0xFF101828), // Warna latar belakang dari My Booking
  automaticallyImplyLeading: false, // Untuk tidak menampilkan tombol kembali secara otomatis
  actions: [
    IconButton(
      icon: Icon(Icons.edit),
      onPressed: () {
        // Implementasi edit profile
      },
    ),
  ],
),
      body: SingleChildScrollView(
        child: Obx(() => Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: controller.userProfile.value.photoUrl != null
                        ? NetworkImage(controller.userProfile.value.photoUrl!)
                        : null,
                         child: controller.userProfile.value.photoUrl == null
                        ? Icon(Icons.person, size: 50)
                        : null,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildProfileItem(
              icon: Icons.person,
              title: 'Name',
              value: controller.userProfile.value.name,
            ),
            _buildProfileItem(
  icon: Icons.email,
              title: 'Email',
              value: controller.userProfile.value.email,
            ),
            _buildProfileItem(
              icon: Icons.phone,
              title: 'Phone',
              value: controller.userProfile.value.phoneNumber,
            ),
            SizedBox(height: 20),
            _buildSettingsSection(),
          ],
        )),
      ),
    );
  }

  Widget _buildProfileItem({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        child: ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(title),
          subtitle: Text(value),
        ),
      ),
 );
  }

  Widget _buildSettingsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.notifications, color: Colors.blue),
                title: Text('Notifications'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Implementasi notifications settings
                },
              ),
              Divider(),
      ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text('Privacy'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Implementasi privacy settings
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.help, color: Colors.blue),
                title: Text('Help Center'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Implementasi help center
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Logout'),
                onTap: () {
                  // Implementasi logout
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}