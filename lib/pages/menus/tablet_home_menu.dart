import 'package:flutter/material.dart';
import 'package:project6/widgets/booking_card.dart';
import 'package:project6/widgets/category_button.dart';

class HomeMenuResponsive extends StatefulWidget {
  @override
  _HomeMenuResponsiveState createState() => _HomeMenuResponsiveState();
}

class _HomeMenuResponsiveState extends State<HomeMenuResponsive> {
  String selectedCategory = 'Flight';
  List<BookingCardData> bookingData = [];

  @override
  void initState() {
    super.initState();
    loadBookingData(selectedCategory);
  }

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
        ];
      } else if (category == 'Kereta') {
        bookingData = [
          BookingCardData(id: 8, title: 'Train to Jakarta', date: '15 Sept 2024', time: '07:00 AM', transportType: 'kereta'),
          BookingCardData(id: 9, title: 'Train to Bandung', date: '18 Sept 2024', time: '09:30 AM', transportType: 'kereta'),
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF101828),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Home - Tablet View',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting Section
            Text(
              'Hi Jojo!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            Text(
              'Good Morning',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 16),

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

            // Responsive GridView or ListView based on orientation
            Expanded(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  if (orientation == Orientation.landscape) {
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: bookingData.length,
                      itemBuilder: (context, index) {
                        final data = bookingData[index];
                        return BookingCard(
                          id: data.id,
                          title: data.title,
                          date: data.date,
                          time: data.time,
                          transportType: data.transportType,
                          showFavoriteIcon: true,
                          buttonText: 'Beli Sekarang',
                        );
                      },
                    );
                  } else {
                    return ListView.builder(
                      itemCount: bookingData.length,
                      itemBuilder: (context, index) {
                        final data = bookingData[index];
                        return BookingCard(
                          id: data.id,
                          title: data.title,
                          date: data.date,
                          time: data.time,
                          transportType: data.transportType,
                          showFavoriteIcon: true,
                          buttonText: 'Beli Sekarang',
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
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
