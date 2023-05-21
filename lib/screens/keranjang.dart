import 'package:flutter/material.dart';


class UserKeranjang extends StatelessWidget {
  const UserKeranjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'keranjangku',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}