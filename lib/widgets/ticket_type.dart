import 'package:flutter/material.dart';

class TicketTypeCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const TicketTypeCard({required this.icon, required this.title, required this.onTap});

  @override
  _TicketTypeCardState createState() => _TicketTypeCardState();
}

class _TicketTypeCardState extends State<TicketTypeCard> {
  bool isFavorite = false; // Track favorite state

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        margin: EdgeInsets.all(10),
        child: ListTile(
          leading: Icon(widget.icon, size: 40),
          title: Text(widget.title, style: TextStyle(fontSize: 18)),
          trailing: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite; // Toggle favorite state
              });
            },
          ),
        ),
      ),
    );
  }
}
