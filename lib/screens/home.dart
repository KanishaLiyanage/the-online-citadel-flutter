import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../theme/colors.dart';
import '../widgets/book_box.dart';
import '../widgets/genre_box.dart';

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
    var boxWidth = 0.8 * size.width;
    var boxHeight = 0.35 * size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 0.08 * size.height),
          Container(
            height: 0.1 * size.height,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
            padding: EdgeInsets.only(top: 0.04 * size.width),
            child: Text(
              "Hi, Good morning!",
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 0.08 * size.height,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
            padding: EdgeInsets.only(top: 0.04 * size.width),
            child: Text(
              "Genres of Books",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          GenreBox(boxWidth: boxWidth, boxHeight: boxHeight, size: size),
          SizedBox(height: 0.015 * size.height),
          Container(
            height: 0.08 * size.height,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
            padding: EdgeInsets.only(top: 0.04 * size.width),
            child: Text(
              "All Books",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BookBox(size: size),
        ],
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
