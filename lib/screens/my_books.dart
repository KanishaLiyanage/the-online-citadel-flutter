import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class MyBooksScreen extends StatelessWidget {
  const MyBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppbar(size, context),
        body: Column(
          children: [],
        ),);
  }
}
