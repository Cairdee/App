import 'package:flutter/material.dart';
import 'package:project6/models/favorite_model.dart';
import 'package:project6/database_helper.dart';

class BookingCard extends StatefulWidget {
  final int id;
  final String title;
  final String date;
  final String time;
  final String? status;
  final bool showFavoriteIcon;
  final bool showStatus;
  final String buttonText;
  final String transportType; // NEW: Parameter untuk jenis transportasi

  BookingCard({
    required this.id,
    required this.title,
    required this.date,
    required this.time,
    this.status,
    this.showFavoriteIcon = true,
    this.showStatus = true,
    this.buttonText = 'View Details',
    required this.transportType, // NEW: Menambahkan parameter transportType
  });

  @override
  _BookingCardState createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  late bool isFavorited = false;

  @override
  void initState() {
    super.initState();
    checkIfFavorited();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> checkIfFavorited() async {
    final favorites = await DatabaseHelper().getFavorites();
    if (mounted) {
      setState(() {
        isFavorited = favorites.any((favorite) => favorite.title == widget.title);
      });
    }
  }

  Future<void> toggleFavorite() async {
    if (isFavorited) {
      await DatabaseHelper().deleteFavorite(widget.id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${widget.title} removed from favorites')),
        );
      }
    } else {
      await DatabaseHelper().insertFavorite(FavoriteModel(
        title: widget.title,
        date: widget.date,
        time: widget.time,
        status: 'favorite',
      ));
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${widget.title} added to favorites')),
        );
      }
    }

    if (mounted) {
      setState(() {
        isFavorited = !isFavorited;
      });
    }
  }

  // NEW: Method untuk memilih icon sesuai jenis transportasi
 IconData getTransportIcon() {
  print('Transport Type: ${widget.transportType}'); // Tambahkan ini
  switch (widget.transportType) {
    case 'pesawat':
      return Icons.flight;
    case 'kapal':
      return Icons.directions_boat;
    case 'kereta':
      return Icons.train;
    default:
      return Icons.directions;
  }
}



  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'SIN',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Singapore',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(getTransportIcon(), color: Colors.blue), // NEW: Icon dinamis
                    Text(
                      '1h 30m',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'CGK',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Jakarta',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 8),
            Text('Date: ${widget.date}', style: TextStyle(color: Colors.grey[700])),
            Text('Time: ${widget.time}', style: TextStyle(color: Colors.grey[700])),
            if (widget.showStatus && widget.status != null)
              Text('Status: ${widget.status}', style: TextStyle(color: Colors.green)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.showFavoriteIcon)
                  InkWell(
                    onTap: toggleFavorite,
                    child: Icon(
                      isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: isFavorited ? Colors.red : Colors.grey,
                      size: 30,
                    ),
                  ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(widget.buttonText),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
