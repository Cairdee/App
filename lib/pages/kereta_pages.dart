import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';

class KeretaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Kereta Ticket', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF101828),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BookingCard(
            id: 1,
            title: 'Train to Jakarta',
            date: '15 Sept 2024',
            time: '07:00 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 2,
            title: 'Train to Bandung',
            date: '18 Sept 2024',
            time: '09:30 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 3,
            title: 'Train to Yogyakarta',
            date: '20 Sept 2024',
            time: '11:15 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 4,
            title: 'Train to Surabaya',
            date: '23 Sept 2024',
            time: '04:00 PM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
        ],
      ),
    );
  }
}
