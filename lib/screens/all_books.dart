import 'package:flutter/material.dart';

import '../widgets/page_app_bar.dart';

class AllBooks extends StatelessWidget {
  const AllBooks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String pageTitle = "All Books";
    return Scaffold(
      appBar: PageAppBar(pageTitle, context),
    );
  }
}
