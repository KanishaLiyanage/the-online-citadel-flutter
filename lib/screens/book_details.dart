import 'package:flutter/material.dart';

import '../widgets/page_app_bar.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PageAppBar("Book Title Here", context),
    );
  }
}
