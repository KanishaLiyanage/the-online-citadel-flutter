import 'package:flutter/material.dart';

AppBar PageAppBar(pageTitle, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return AppBar(
    toolbarHeight: 0.1 * size.height,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leadingWidth: 0.225 * size.width,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.black,
        size: 35,
      ),
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      pageTitle,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    centerTitle: true,
  );
}
