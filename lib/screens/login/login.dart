// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_furtable/constants.dart';

import '../Registrasi/registrasi.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Selamat datang kembali!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Kamu telah kami rindukan, silahkan login dan mulailah berbelanja kembali.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Tombol lupa password diklik
                },
                child: Text(
                  'Lupa password',
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Tombol Masuk diklik
              },
              child: Text('Masuk'),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(320, 56), // Mengatur ukuran lebar dan tinggi tombol
                backgroundColor: kPrimaryColor, // Mengatur warna latar belakang tombol
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
                child: Text(
                  'Belum mempunyai akun? Daftar',
                  style: TextStyle(
                    fontSize: 14,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
