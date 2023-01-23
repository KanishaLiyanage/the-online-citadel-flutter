import 'package:flutter/material.dart';

import '../widgets/genre_box.dart';
import '../widgets/page_app_bar.dart';

class AllGenres extends StatelessWidget {
  const AllGenres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const String pageTitle = "All Genres";
    return Scaffold(
      appBar: PageAppBar(pageTitle, context),
      body: ListView(
        padding: EdgeInsets.fromLTRB(
          0.015 * size.height,
          0.015 * size.height,
          0.015 * size.height,
          0.025 * size.height,
        ),
        children: [
          GenreBox(),
          GenreBox(),
          GenreBox(),
        ],
      ),
    );
  }
}
