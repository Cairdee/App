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

  BookingCard({
    required this.id,
    required this.title,
    required this.date,
    required this.time,
    this.status,
    this.showFavoriteIcon = true,
    this.showStatus = true,
    this.buttonText = 'View Details',
  });

  @override
  _BookingCardState createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  late bool isFavorited = false; // Menginisialisasi dengan nilai default

  @override
  void initState() {
    super.initState();
    checkIfFavorited(); // Memeriksa apakah item sudah difavoritkan saat inisialisasi
  }

  Future<void> checkIfFavorited() async {
    final favorites = await DatabaseHelper().getFavorites();
    setState(() {
      isFavorited = favorites.any((favorite) => favorite.title == widget.title);
    });
  }

  Future<void> toggleFavorite() async {
    if (isFavorited) {
      await DatabaseHelper().deleteFavorite(widget.id);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${widget.title} removed from favorites')));
    } else {
      await DatabaseHelper().insertFavorite(FavoriteModel(
        title: widget.title,
        date: widget.date,
        time: widget.time,
        status: 'favorite',
      ));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${widget.title} added to favorites')));
    }
    
    // Update status favorit
    setState(() {
      isFavorited = !isFavorited; // Toggle status favorit
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Date: ${widget.date}'),
            Text('Time: ${widget.time}'),
            if (widget.showStatus && widget.status != null) Text('Status: ${widget.status}'),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (widget.showFavoriteIcon)
                  InkWell(
                    onTap: () {
                      toggleFavorite(); // Memanggil metode toggle
                    },
                    child: Icon(
                      isFavorited ? Icons.favorite : Icons.favorite_border,
                      color: isFavorited ? Colors.red : Colors.grey,
                    ),
                  ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(widget.buttonText),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
