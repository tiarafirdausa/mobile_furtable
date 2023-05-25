// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile_furtable/constants.dart';
import 'package:intl/intl.dart';

// import 'package:flutter_html/flutter_html.dart';

class ProductItemScreen extends StatefulWidget {
  const ProductItemScreen({Key? key}) : super(key: key);

  @override
  _ProductItemScreenState createState() => _ProductItemScreenState();
}

class _ProductItemScreenState extends State<ProductItemScreen> {
  final List<String> imagePaths = [
    "assets/images/Rectangle 615.png",
    "assets/images/Rectangle 615.png",
    "assets/images/Rectangle 615.png",
    "assets/images/Rectangle 615.png",
    "assets/images/Rectangle 615.png",
  ];

  late CarouselController _carouselController;
  int _currentImageIndex = 0;

  @override
  void initState() {
    _carouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Gambar Barang
              Stack(
                children: [
                  CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.width,
                      aspectRatio: 1.0,
                      enableInfiniteScroll: false,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentImageIndex = index;
                        });
                      },
                    ),
                    items: imagePaths.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagePaths.asMap().entries.map((entry) {
                        int index = entry.key;
                        return GestureDetector(
                          onTap: () {
                            _carouselController.animateToPage(index);
                          },
                          child: Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentImageIndex == index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.4),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),

              //Nama, Harga, Deskripsi
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "LANDSOVER",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Kursi",
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 103, 103),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            NumberFormat.currency(
                              symbol: 'Rp',
                              decimalDigits: 0,
                            ).format(5000000),
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 1.5,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            NumberFormat.currency(
                              symbol: 'Rp',
                              decimalDigits: 0,
                            ).format(5000000),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Color.fromARGB(255, 207, 207, 207),
                        thickness: 1.5,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Description",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Hangat dan ramah, rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan.",
                        style: TextStyle(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Bahan",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Trembesi",
                        style: TextStyle(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Ukuran",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Trembesi",
                        style: TextStyle(),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Color.fromARGB(255, 207, 207, 207),
                        thickness: 1.5,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Estimasi Pengiriman",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.local_shipping,
                            color: Color.fromARGB(255, 81, 81, 81),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Ongkos kirim mulai dari Rp 250.000",
                            style: TextStyle(
                              color: Color.fromARGB(255, 81, 81, 81),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Text(
                        "(Masih estimasi, bisa lebih murah dan mahal)",
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 103, 103),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Reguler (Perkiraan pesanan datang paling cepat 3 hari setelah pengiriman)",
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Color.fromARGB(255, 81, 81, 81),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Gratis biaya perakitan",
                            style: TextStyle(
                              color: Color.fromARGB(255, 81, 81, 81),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Gratis pemasangan untuk setiap pembelanjaan di Furtable dan gratis konsultasi.",
                        style: TextStyle(),
                      ),
                      SizedBox(height: 20),

                      //Harga dan button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Harga"),
                              Text(
                                "Rp 5.250.000",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Aksi yang ingin Anda lakukan saat tombol ditekan
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              side: BorderSide.none,
                              padding: EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            child: Text(
                              "+  Keranjang",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
