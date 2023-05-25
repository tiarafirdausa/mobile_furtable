// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/screens/profile/histori.dart';
// import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'update_profile.dart';

class UserProfile extends StatefulWidget {
  static String routeName = "/profile";

  const UserProfile({super.key});
  @override
  State<UserProfile> createState() => _UserProfile();
}

class _UserProfile extends State<UserProfile> {
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
      // appbar profil
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          "Profil",
          style: TextStyle(
            color: Color(0xFF515151),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      //Body
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            //Foto Profil
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
            // Nama + Email
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "Adhiyaksa Satria",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "adhiyaksasatria@gmail.com",
              style: TextStyle(
                fontSize: 15,
                color: kTextColor,
              ),
            ),
            SizedBox(height: 25),
            //Menu Akun Saya
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
                        "Akun Saya",
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
            SizedBox(height: 15),
            // Menu Riwayat
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
                        "Riwayat",
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
            SizedBox(height: 15),
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
                        "Keluar",
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
            SizedBox(height: 15),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            Text(
              'Kontak Kami',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 15),
            //Menu Kontak Kami
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
            SizedBox(height: 15), // Jarak antara menu
          ],
        ),
      ),
    );
  }
}
