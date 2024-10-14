import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';

class KapalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Kapal Ticket', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF101828),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BookingCard(
            id: 1,
            title: 'Trip to Bali',
            date: '20 Sept 2024',
            time: '09:00 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 2,
            title: 'Trip to Komodo',
            date: '22 Sept 2024',
            time: '11:30 AM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 3,
            title: 'Trip to Gili Trawangan',
            date: '25 Sept 2024',
            time: '02:00 PM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
          BookingCard(
            id: 4,
            title: 'Trip to Labuan Bajo',
            date: '28 Sept 2024',
            time: '05:30 PM',
            showStatus: false,
            showFavoriteIcon: true,
            buttonText: 'Beli Sekarang',
          ),
        ],
      ),
    );
  }
}
