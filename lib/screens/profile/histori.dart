// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_furtable/constants.dart';
import 'package:mobile_furtable/screens/profile/profile_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);
  static String routeName = "/histori";

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
          "Histori",
          style: TextStyle(
            color: Color(0xFF515151),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              for (int i = 1; i < 10; i++)
                Container(
                  height: 110,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 243, 243),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 125, 125, 125),
                          blurRadius: 3.0,
                          spreadRadius: -0.90,
                        ),
                      ]
                      // borderRadius: BorderRadius.circular(10),
                      ),
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        margin: EdgeInsets.only(right: 15),
                        child: Image.asset("assets/images/Group 26935.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kursi belajar",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
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
                          ],
                        ),
                      )
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
