import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';

class BookingMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text(
          'My Booking',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF101828),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BookingCard(
            id: 1,
            title: 'Pesawat Flight to Bali',
            date: '15 Oct 2024',
            time: '09:00 AM',
            status: 'Confirmed',
            showFavoriteIcon: false, 
            showStatus: true, 
          ),
          BookingCard(
            id: 2,
            title: 'Kapal Ferry to Lombok',
            date: '16 Oct 2024',
            time: '12:30 PM',
            status: 'Pending',
            showFavoriteIcon: false, // Hide favorite icon
          ),
          BookingCard(
            id: 3,
            title: 'Kereta Train to Jakarta',
            date: '17 Oct 2024',
            time: '06:00 AM',
            status: 'Cancelled',
            showFavoriteIcon: false, // Hide favorite icon
          ),
        ],
      ),
    );
  }
}
