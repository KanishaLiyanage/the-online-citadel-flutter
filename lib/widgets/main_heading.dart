import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 0.1 * size.height,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
      padding: EdgeInsets.only(top: 0.04 * size.width),
      child: Text(
        "Hi, Good morning!",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
