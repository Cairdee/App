import 'package:flutter/material.dart';

class TicketTypeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const TicketTypeCard({required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          leading: Icon(icon, size: 40),
          title: Text(title, style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}
