import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';

class BookingMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Booking',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
            transportType: 'pesawat',
            showStatus: true,
          ),
          BookingCard(
            id: 2,
            title: 'Kapal Ferry to Lombok',
            date: '16 Oct 2024',
            time: '12:30 PM',
            status: 'Pending',
            transportType: 'kapal',
            showFavoriteIcon: false, // Hide favorite icon
          ),
          BookingCard(
            id: 3,
            title: 'Kereta Train to Jakarta',
            date: '17 Oct 2024',
            time: '06:00 AM',
            status: 'Cancelled',
            transportType: 'kereta',
            showFavoriteIcon: false, // Hide favorite icon
          ),
        ],
      ),
    );
  }
}
