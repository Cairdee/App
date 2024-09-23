import 'package:flutter/material.dart';
import 'package:project6/pages/nav_drawer.dart';

class BookingMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Bookings')),
      drawer: NavDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BookingCard(
            title: 'Flight to New York',
            date: '12 Sept 2024',
            time: '08:30 AM',
            status: 'Confirmed',
          ),
          BookingCard(
            title: 'Train to Los Angeles',
            date: '15 Sept 2024',
            time: '10:00 AM',
            status: 'Confirmed',
          ),
          BookingCard(
            title: 'Ship to San Francisco',
            date: '20 Sept 2024',
            time: '01:00 PM',
            status: 'Pending',
          ),
        ],
      ),
    );
  }
}

class BookingCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String status;

  const BookingCard({
    required this.title,
    required this.date,
    required this.time,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Date: $date'),
            Text('Time: $time'),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Status: $status'),
                ElevatedButton(
                  onPressed: () {
                    // Implementasi detail atau fitur pembatalan booking
                  },
                  child: Text('View Details'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
