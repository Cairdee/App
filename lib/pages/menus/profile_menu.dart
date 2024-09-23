import 'package:flutter/material.dart';
import 'package:project6/pages/nav_drawer.dart';

class ProfileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      drawer: NavDrawer(), // Navigation Drawer
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_user.png'), 
            ),
            SizedBox(height: 16),
            Text(
              'Jovanco Nicholas Rise',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'jovancojojo268@gmail.com',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 16),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomer Telefon'),
              subtitle: Text('+62 821 4729 6071'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Alamat'),
              subtitle: Text('Jln.Gebog,Kudus,Jawa Tengah'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implementasi edit profile atau fitur lainnya
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
