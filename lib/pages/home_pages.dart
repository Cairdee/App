// home_content.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.airplane_ticket, size: 100),
          SizedBox(height: 20),
          Text('Select your ticket type below:'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/pesawat'); // Navigasi ke halaman Pesawat
            },
            child: Text('Pesawat Tickets'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/kapal'); // Navigasi ke halaman Kapal
            },
            child: Text('Kapal Tickets'),
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/kereta'); // Navigasi ke halaman Kereta
            },
            child: Text('Kereta Tickets'),
          ),
        ],
      ),
    );
  }
}
