import 'package:flutter/material.dart';

import '../screens/read_book.dart';
import './screens/book_details.dart';
import '../screens/profile.dart';
import './screens/landing.dart';
import './screens/all_books.dart';
import './screens/home.dart';
import './screens/all_genres.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Online Citadel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/allGenres': (context) => AllGenres(),
        '/allBooks': (context) => AllBooks(),
        '/profile': (context) => ProfileScreen(),
        '/bookDetails': (context) => BookDetails(),
        '/readBook': (context) => ReadBookScreen(),
      },
    );
  }
}
