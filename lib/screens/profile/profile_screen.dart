// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/screens/profile/histori.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'update_profile.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  // final String whatsappUrl = 'https://wa.me/+6281323445334';
  final Uri instagram = Uri.parse('www.instagram.com/tiarafa__');
  // final Uri _url = Uri.parse('https://youtu.be/gU7ZxYN03fU');

  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Color(0xFF515151),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Group 26935.png"),
                  ),
                ],
              ),
            ),
            Text(
              "Adhiyaksa Satria",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "adhiyaksasatria@gmail.com",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 25),
            //My Acount
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFFF5F6F9),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UpdateProfileScreen()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/User Icon.svg",
                      color: Color(0xFFF5F6F9),
                      width: 22,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "My Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15), // Jarak antara menu
            // Menu History
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFFF5F6F9),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HistoryScreen()),
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Bill Icon.svg",
                      color: Color(0xFFF5F6F9),
                      width: 22,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15), // Jarak antara menu
            Divider(
              color: Colors.grey,
              thickness: 1.0, // Ketebalan garis divider
              indent: 20.0, // Jarak indentasi dari kiri
              endIndent: 20.0, // Jarak indentasi dari kanan
            ),
            SizedBox(height: 15),
            // Menu History
            Text(
              'Kontak Kami',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor:
                              kPrimaryColor // Ubah warna latar belakang sesuai keinginan
                          ),
                      onPressed: () {
                        // Aksi ketika tombol teks ditekan
                      },
                      child: SvgPicture.asset(
                        "assets/icons/instagram.svg",
                        color: Color(0xFFF5F6F9),
                        width: 22,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: kPrimaryColor),
                      onPressed: () {
                        // Aksi ketika tombol teks ditekan
                      },
                      child: SvgPicture.asset(
                        "assets/icons/whatsapp.svg",
                        color: Color(0xFFF5F6F9),
                        width: 22,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Color(0xFFF5F6F9),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: kPrimaryColor),
                      onPressed: () {
                        // Aksi ketika tombol teks ditekan
                      },
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        color: Color(0xFFF5F6F9),
                        width: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40), // Jarak antara menu
            // Logout
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFFF5F6F9),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {
                  // Tambahkan logika untuk menu Logout
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Log out.svg",
                      color: Color(0xFFF5F6F9),
                      width: 22,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
