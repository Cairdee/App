import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project6/controller/nav_controller.dart';

class NavDrawer extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'E-Ticket App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              navController.goToHome();
            },
          ),
          ListTile(
            leading: Icon(Icons.book_online),
            title: Text('Bookings'),
            onTap: () {
              navController.goToBookings();
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              navController.goToProfile();
            },
          ),
        ],
      ),
    );
  }
}
