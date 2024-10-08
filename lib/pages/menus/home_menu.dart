import 'package:flutter/material.dart';
import 'package:project6/pages/home_pages.dart';


class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E Ticket',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF101828),
      ),
      body: HomeContent(), 
    );
  }
}
