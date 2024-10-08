import 'package:flutter/material.dart';

class PesawatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  iconTheme: IconThemeData(
    color: Colors.white, 
  ),
  title: Text(
    'Pesawat',
    style: TextStyle(color: Colors.white),
  ),
  backgroundColor: Color(0xFF101828),
),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.asset(
                'assets/rajaampat.jpg', 
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'RajaAmpat - Papua Barat',
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
                      Text('4.9'),
                    ],
                  ),
                  Text('Bandara: Domine Eduard Osok'),
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
                  child: Text('20000000 Rp'),
                ),
              ),
              SizedBox(height: 16),


              Image.asset(
                'assets/danautoba.jpg', 
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'DanauToba - Sumatera Utara',
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
                      Text('4.7'),
                    ],
                  ),
                  Text('Bandara: Internasional Kualanamu'),
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
                  child: Text('17000000 Rp'),
                ),
              ),
              SizedBox(height: 16),

               Image.asset(
                'assets/gunungbromo.jpg', 
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'GunungBromo - Jawa Timur',
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
                      Text('4.8'),
                    ],
                  ),
                  Text('Bandara: Juanda'),
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
                  child: Text('14000000 Rp'),
                ),
              ),
              SizedBox(height: 16),

                Image.asset(
                'assets/pulaukomodo.jpg', 
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'PulauKomodo - Kepulauan Nusa Tenggara',
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
                  Text('Bandara: Labuan Bajo'),
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
                  child: Text('30000000 Rp'),
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
