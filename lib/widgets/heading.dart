import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 0.08 * size.height,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
      padding: EdgeInsets.only(top: 0.04 * size.width),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
