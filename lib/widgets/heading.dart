import 'package:flutter/material.dart';
import '../screens/all_genres.dart';

class Heading extends StatelessWidget {
  final String heading;
  final String route;

  Heading({
    required this.heading,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 0.08 * size.height,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 0.08 * size.width),
      padding: EdgeInsets.only(top: 0.04 * size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Text(
              "See all",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
