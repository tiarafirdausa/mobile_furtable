// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/constants.dart';
import 'package:mobile_furtable/screens/profile/profile_screen.dart';

class UpdateProfileScreen extends StatefulWidget {
  static String routeName = "/updateprofile";

  const UpdateProfileScreen({Key? key}) : super(key: key);
  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreen();
}

class _UpdateProfileScreen extends State<UpdateProfileScreen> {
  // final namaController = TextEditingController();
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        toolbarHeight: 70,
        title: Text("Edit Profile"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            gradient: LinearGradient(colors: [
              Color.fromARGB(175, 119, 53, 1),
              Color.fromARGB(255, 199, 134, 1)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
        ),
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
                      label: Text("Password"),
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
                            fontWeight: FontWeight.bold),
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

  Future<void> getData() async {
    var data;
    data = await http
        .get(Uri.parse('http://192.168.1.4:8000/api/history'), headers: {
      HttpHeaders.authorizationHeader:
          'Bearer 2|cC5fRkKFvfNNtdhe2nTk6zAXcr9tSSyoEGVqbmEL'
    });

    if (data.statusCode == 200) {
      var dataJson = jsonDecode(data.body);
      var parsed = dataJson;
    } else {
      throw Exception('failed');
    }
  }

  // Widget buildNama() => TextFormField(
  //       decoration: const InputDecoration(
  //         labelText: 'Nama Lengkap',
  //         enabledBorder: OutlineInputBorder(
  //           borderSide: BorderSide(color: Color(0xFF8D9EFF)),
  //         ),
  //         focusedBorder: OutlineInputBorder(
  //           borderSide: BorderSide(color: Color(0xFF8D9EFF)),
  //         ),
  //         border: OutlineInputBorder(),
  //       ),
  //       keyboardType: TextInputType.name,
  //       textInputAction: TextInputAction.done,
  //       controller: namaController,
  //     );
}
