import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart'; 

class BookingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'My Booking',
    style: TextStyle(
      color: Colors.white, 
    ),
  ),
  backgroundColor: Color(0xFF101828), 
),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BookingCard(
            title: 'Terbang ke New York',
            date: '12 Sept 2024',
            time: '08:30 AM',
            status: 'Terkonfirmasi',
          ),
          BookingCard(
            title: 'Kereta ke Los Angeles',
            date: '15 Sept 2024',
            time: '10:00 AM',
            status: 'Terkonfirmasi',
          ),
          BookingCard(
            title: 'Kapal ke San Francisco',
            date: '20 Sept 2024',
            time: '01:00 PM',
            status: 'Tertunda',
          ),
        ],
      ),
    );
  }
}
