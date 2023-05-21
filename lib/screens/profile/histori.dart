// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/constants.dart';
import 'package:mobile_furtable/screens/profile/profile_screen.dart';
import 'package:mobile_furtable/size_config.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);
  static String routeName = "/histori";

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
        title: Text("History"),
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
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              for (int i = 1; i < 5; i++)
                Container(
                  height: 160,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 165, 165, 165),
                        blurRadius: 3.0,
                        spreadRadius: -0.90,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            margin: EdgeInsets.only(right: 15),
                            child:
                                Image.asset("assets/images/Rectangle 101.png"),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "17 April 2023",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      color:
                                          const Color.fromARGB(255, 47, 47, 47),
                                    ),
                                  ),
                                  Text(
                                    "Kursi belajar",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Rp 6.500.000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Text('Selesai'),
                          ),
                          SizedBox(
                            width: 100,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kPrimaryColor,
                                side: BorderSide.none,
                                // padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              child: Text(
                                "Pesan Lagi",
                                style: TextStyle(
                                  color: Color(0xFFF5F6F9),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
