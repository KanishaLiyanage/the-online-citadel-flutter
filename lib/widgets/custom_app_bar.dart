import 'package:flutter/material.dart';
import '../theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 0.1 * size.height,
          width: 0.1 * size.height,
          margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        Container(
          height: 0.1 * size.height,
          width: 0.1 * size.height,
          margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
          child: IconButton(
            icon: Icon(
              Icons.person,
              size: 35,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
