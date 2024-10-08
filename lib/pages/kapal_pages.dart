import 'package:flutter/material.dart';

class KapalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  iconTheme: IconThemeData(
    color: Colors.white, 
  ),
  title: Text(
    'Kapal',
    style: TextStyle(color: Colors.white),
  ),
  backgroundColor: Color(0xFF101828),
),
       body: SingleChildScrollView( // Supaya bisa di-scroll jika konten banyak
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Image.asset(
                'assets/kapal.jpg', // Ganti dengan jalur gambar aset
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Tanjung Priok - Tanjung Perak',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.1'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Harga per penumpang',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('50000 Rp'),
                ),
              ),
              SizedBox(height: 16),

              Image.asset(
                'assets/kapal.jpg', // Ganti dengan gambar yang berbeda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Belawan - Makassar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.2'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Harga per penumpang',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('75000 Rp'),
                ),
              ),
              SizedBox(height: 16),

               Image.asset(
                'assets/kapal.jpg', // Ganti dengan gambar yang berbeda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Benoa - Bakauheni',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.3'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Harga per penumpang',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('100000 Rp'),
                ),
              ),
              SizedBox(height: 16),

                Image.asset(
                'assets/kapal.jpg', // Ganti dengan gambar yang berbeda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Gilimanuk - Merak',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.4'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Harga per penumpang',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('125000 Rp'),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
