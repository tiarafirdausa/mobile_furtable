// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Color.fromARGB(255, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "LANDSOVER",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
                      SizedBox(height: 10),
                      Text(
                        "Hangat dan ramah,Hangat dan ramah, rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan.Hangat dan ramah, rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan.Hangat dan ramah, rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan.Hangat dan ramah, rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan.Hangat dan ramah, rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan. rapi dan bergaya. Bantal kursi penyangga, sarung yang lembut dan pelengkap yang ketat membuat kursi ini memiliki keseimbangan sempurna antara kenyamanan, fungsi, dan tampilan.",
                        style: TextStyle(),
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
