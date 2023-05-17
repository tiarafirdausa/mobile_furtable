import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/constants.dart';
import 'package:mobile_furtable/screens/profile/profile_screen.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);
  static String routeName = "/contactus";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Contact",
          style: TextStyle(
            color: Color(0xFF515151),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
