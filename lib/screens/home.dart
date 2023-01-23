import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../theme/colors.dart';
import '../widgets/book_box.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/genre_box.dart';
import '../widgets/heading.dart';

class HomeScreen extends StatelessWidget {
  Dio dio = Dio();

  var url = "http://10.0.2.2:3000";

  Future getAllBooks() async {
    try {
      var response = await dio.get('$url/seeallbooks');
      if (response.statusCode == 200) {
        print(response.data);
      } else {
        print("Failed to Fetch Data!");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(size),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
            ),
            Heading(heading: "Genres of Books"),
            Container(
              height: 0.4 * size.height,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10),
                children: [
                  GenreBox(),
                  GenreBox(),
                  GenreBox(),
                ],
              ),
            ),
            SizedBox(height: 0.015 * size.height),
            Heading(heading: "All Books"),
            Container(
              height: 0.25 * size.height,
              child: ListView(
                padding: EdgeInsets.all(10),
                children: [
                  BookBox(),
                  BookBox(),
                  BookBox(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getAllBooks,
        child: Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}
