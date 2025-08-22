import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';
import 'package:project6/widgets/category_button.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  String selectedCategory = 'Flight';
  List<BookingCardData> bookingData = [];

  @override
  void initState() {
    super.initState();
    loadBookingData(selectedCategory);
  }

  // Method to load booking data based on selected category
  void loadBookingData(String category) {
    setState(() {
      if (category == 'Flight') {
        bookingData = [
          BookingCardData(id: 1, title: 'Flight to Singapore', date: '18 Sept 2024', time: '11:30 AM', transportType: 'pesawat'),
          BookingCardData(id: 2, title: 'Flight to Bali', date: '15 Sept 2024', time: '03:45 PM', transportType: 'pesawat'),
          BookingCardData(id: 3, title: 'Flight to Raja Ampat', date: '12 Sept 2024', time: '08:30 AM', transportType: 'pesawat'),
        ];
      } else if (category == 'Kapal') {
        bookingData = [
          BookingCardData(id: 4, title: 'Trip to Bali', date: '20 Sept 2024', time: '09:00 AM', transportType: 'kapal'),
          BookingCardData(id: 5, title: 'Trip to Komodo', date: '22 Sept 2024', time: '11:30 AM', transportType: 'kapal'),
          BookingCardData(id: 6, title: 'Trip to Gili Trawangan', date: '25 Sept 2024', time: '02:00 PM', transportType: 'kapal'),
          BookingCardData(id: 7, title: 'Trip to Labuan Bajo', date: '28 Sept 2024', time: '05:30 PM', transportType: 'kapal'),
        ];
      } else if (category == 'Kereta') {
        bookingData = [
          BookingCardData(id: 8, title: 'Train to Jakarta', date: '15 Sept 2024', time: '07:00 AM', transportType: 'kereta'),
          BookingCardData(id: 9, title: 'Train to Bandung', date: '18 Sept 2024', time: '09:30 AM', transportType: 'kereta'),
          BookingCardData(id: 10, title: 'Train to Yogyakarta', date: '20 Sept 2024', time: '11:15 AM', transportType: 'kereta'),
          BookingCardData(id: 11, title: 'Train to Surabaya', date: '23 Sept 2024', time: '04:00 PM', transportType: 'kereta'),
        ];
      }
    });
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Color(0xFF101828), // Diperbaiki di sini
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Home',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      automaticallyImplyLeading: false,
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting section
              Text(
                'Hi Jojo!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              Text(
                'Good Morning',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),

              // Search bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Welcome card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: Icon(Icons.person, color: Colors.grey),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome!',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Mari Memilih Tiket!',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Category Selector
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(
                      title: 'Flight',
                      isSelected: selectedCategory == 'Flight',
                      onTap: () {
                        setState(() {
                          selectedCategory = 'Flight';
                          loadBookingData(selectedCategory);
                        });
                      },
                    ),
                    SizedBox(width: 8),
                    CategoryButton(
                      title: 'Kapal',
                      isSelected: selectedCategory == 'Kapal',
                      onTap: () {
                        setState(() {
                          selectedCategory = 'Kapal';
                          loadBookingData(selectedCategory);
                        });
                      },
                    ),
                    SizedBox(width: 8),
                    CategoryButton(
                      title: 'Kereta',
                      isSelected: selectedCategory == 'Kereta',
                      onTap: () {
                        setState(() {
                          selectedCategory = 'Kereta';
                          loadBookingData(selectedCategory);
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // List of Booking Cards
              Column(
                children: bookingData.map((data) {
                  return BookingCard(
                    id: data.id,
                    title: data.title,
                    date: data.date,
                    time: data.time,
                    showStatus: false,
                    showFavoriteIcon: true,
                    transportType: data.transportType,
                    buttonText: 'Beli Sekarang',
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Data class for booking card details
class BookingCardData {
  final int id;
  final String title;
  final String date;
  final String time;
  final String transportType;

  BookingCardData({
    required this.id,
    required this.title,
    required this.date,
    required this.time,
    required this.transportType,
  });
}