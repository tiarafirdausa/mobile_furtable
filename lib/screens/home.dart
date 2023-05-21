// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mobile_furtable/icon.dart';

class UserHome extends StatefulWidget {
  static String routeName = "/home";
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List<Map<String, dynamic>> mylist = [
    {
      "Name": "Meja 1",
      "Harga": "Rp. 1.000.000",
      "Image": 'assets/images/gambar1.jpg'
    },
    {
      "Name": "Meja 2",
      "Harga": "Rp. 2.000.000",
      "Image": 'assets/images/gambar1.jpg'
    },
    {
      "Name": "Meja 1",
      "Harga": "Rp. 1.000.000",
      "Image": 'assets/images/gambar1.jpg'
    },
    {
      "Name": "Meja 2",
      "Harga": "Rp. 2.000.000",
      "Image": 'assets/images/gambar1.jpg'
    },
    {
      "Name": "Meja 2",
      "Harga": "Rp. 2.000.000",
      "Image": 'assets/images/gambar1.jpg'
    },
    {
      "Name": "Meja 2",
      "Harga": "Rp. 2.000.000",
      "Image": 'assets/images/gambar1.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Hallo Tiara',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Mari temukan Furniture terbaik bersama kami!',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent[100],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          color: Colors.white,
                          Icons.notifications,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  //search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'search your furniture',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //category
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //iconkursi
                      Column(
                        children: [
                          IconCategory(
                            iconEmpat: '🪑',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Kursi',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),

                      //iconmeja
                      Column(
                        children: [
                          IconCategory(
                            iconEmpat: '🚪',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'meja',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //iconsofa
                      Column(
                        children: [
                          IconCategory(
                            iconEmpat: '🛋️',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'sofa',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //icondipan
                      Column(
                        children: [
                          IconCategory(
                            iconEmpat: '🛌',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'amben',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: SafeArea(
                    child: SingleChildScrollView(
                        child: Column(
                  children: [
                    Text(
                      "Hey Disini Ada Flashsale",
                      textAlign: TextAlign.left,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.all(24.0),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12.0,
                            mainAxisExtent: 250),
                        itemCount: mylist.length,
                        itemBuilder: (_, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.0),
                                  topRight: Radius.circular(12.0),
                                ),
                                child: Image.asset(mylist[index]['Image']),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(children: [
                                  Text("${mylist.elementAt(index)['Name']}"),
                                  Text("${mylist.elementAt(index)['Harga']}")
                                ]),
                              )
                            ]),
                          );
                        }),
                  ],
                ))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
