import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';

class PesawatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Pesawat Ticket', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF101828),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BookingCard(
            id: 1,
            title: 'Flight to Raja Ampat',
            date: '12 Sept 2024',
            time: '08:30 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 2,
            title: 'Flight to Danau Toba',
            date: '15 Sept 2024',
            time: '10:00 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 3,
            title: 'Flight to Bali',
            date: '18 Sept 2024',
            time: '12:30 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 4,
            title: 'Flight to Mount Bromo',
            date: '18 Sept 2024',
            time: '12:30 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
        ],
      ),
    );
  }
}
