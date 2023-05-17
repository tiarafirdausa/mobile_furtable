// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/constants.dart';
import 'package:mobile_furtable/screens/profile/profile_screen.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/updateprofile";

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
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(
            color: Color(0xFF515151),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //picture
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
                    Positioned(
                      right: -16,
                      bottom: 0,
                      child: SizedBox(
                        height: 46,
                        width: 46,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.white),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xFFF5F6F9),
                          ),
                          onPressed: () {},
                          child:
                              SvgPicture.asset("assets/icons/Camera Icon.svg"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              //form
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Nama Lengkap"),
                      labelStyle: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      labelStyle: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("No Hp"),
                      labelStyle: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        side: BorderSide.none,
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                          color: Color(0xFFF5F6F9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
