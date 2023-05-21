import 'package:flutter/material.dart';

class IconCategory extends StatelessWidget {

  final String iconEmpat;

  const IconCategory({Key? key, required this.iconEmpat}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12)
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          iconEmpat,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
