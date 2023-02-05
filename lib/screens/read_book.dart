import 'package:flutter/material.dart';

import '../widgets/page_app_bar.dart';

class ReadBookScreen extends StatelessWidget {
  const ReadBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageAppBar("Book Title Here", context),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
