import 'package:flutter/material.dart';

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
      home: HomeScreen(),
      routes: {
        '/allGenres': (context) => AllGenres(),
        '/allBooks': (context) => AllBooks(),
      },
    );
  }
}
