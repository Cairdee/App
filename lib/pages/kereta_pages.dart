import 'package:flutter/material.dart';

class KeretaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  iconTheme: IconThemeData(
    color: Colors.white, // Ubah warna panah kembali menjadi putih
  ),
  title: Text(
    'Kereta',
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
              // Pesawat 1
              Image.asset(
                'assets/stasiunkereta.jpg', // Ganti dengan jalur gambar aset
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Gambir - Bandung',
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
                      Text('4.0'),
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

              // Pesawat 2
              Image.asset(
                'assets/stasiunkereta.jpg', // Ganti dengan gambar yang berbeda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Malang - Cirebon',
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
                  child: Text('150000 Rp'),
                ),
              ),
              SizedBox(height: 16),

               Image.asset(
                'assets/stasiunkereta.jpg', // Ganti dengan gambar yang berbeda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Solo Balapan - Semarang Tawang',
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
                      Text('4.5'),
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
                  child: Text('160000 Rp'),
                ),
              ),
              SizedBox(height: 16),

                Image.asset(
                'assets/stasiunkereta.jpg', // Ganti dengan gambar yang berbeda
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Yogyakarta - Pasar Senen',
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
                      Text('3.9'),
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
                  child: Text('200000 Rp'),
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
