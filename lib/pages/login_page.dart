import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF101828),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
ElevatedButton(
  onPressed: () {
    // Validasi username dan password
    if (usernameController.text == 'Jojo' && passwordController.text == 'Jojo') {
      Get.offNamed('/main'); // Arahkan ke rute yang benar
    } else {
      Get.snackbar('Login Failed', 'Invalid username or password');
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // Ubah warna latar belakang
    foregroundColor: Colors.white, // Ubah warna teks
  ),
  child: Text('Login'),
),

          ],
        ),
      ),
    );
  }
}
