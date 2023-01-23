import 'package:flutter/material.dart';
import '../theme/colors.dart';

AppBar CustomAppbar(Size size) {
  return AppBar(
    toolbarHeight: 0.1 * size.height,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leadingWidth: 0.28 * size.width,
    leading: Container(
      margin: EdgeInsets.only(left: 0.08 * size.width),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    ),
    actions: [
      Container(
        height: 0.1 * size.height,
        width: 0.1 * size.height,
        margin: EdgeInsets.only(right: 0.08 * size.width),
        child: IconButton(
          icon: Icon(
            Icons.account_circle_rounded,
            size: 35,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
