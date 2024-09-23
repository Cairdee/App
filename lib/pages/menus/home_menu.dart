import 'package:flutter/material.dart';
import 'package:project6/pages/nav_drawer.dart';
import 'package:project6/pages/ticket_type.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-Ticket Home')),
      drawer: NavDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TicketTypeCard(
            icon: Icons.flight,
            title: 'Airplane Tickets',
            onTap: () {
              // Navigate to Airplane Ticket Search
            },
          ),
          TicketTypeCard(
            icon: Icons.directions_boat,
            title: 'Ship Tickets',
            onTap: () {
              // Navigate to Ship Ticket Search
            },
          ),
          TicketTypeCard(
            icon: Icons.train,
            title: 'Train Tickets',
            onTap: () {
              // Navigate to Train Ticket Search
            },
          ),
        ],
      ),
    );
  }
}
