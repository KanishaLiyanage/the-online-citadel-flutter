import 'package:flutter/material.dart';

import '../theme/colors.dart';

class BookBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.fromLTRB(
          0.08 * size.width,
          0.025 * size.width,
          0.08 * size.width,
          0.025 * size.width,
        ),
        padding: EdgeInsets.all(0.01 * size.width),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 0.3 * size.width,
              height: 0.1 * size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHtVj6yfJohDIk2pWI4vB1_BwSN7tOIhQtfQ&usqp=CAU'),
                ),
              ),
            ),
            SizedBox(width: 0.035 * size.width),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "name",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 0.005 * size.height),
                Text(
                  "price",
                  style: TextStyle(fontSize: 14, color: textColor),
                ),
                SizedBox(height: 0.015 * size.height),
                Row(
                  children: [
                    Icon(
                      Icons.schedule_rounded,
                      color: labelColor,
                      size: 14,
                    ),
                    SizedBox(width: 0.01 * size.width),
                    Text(
                      "duration",
                      style: TextStyle(fontSize: 12, color: labelColor),
                    ),
                    SizedBox(width: 0.035 * size.width),
                    Icon(
                      Icons.star,
                      color: orange,
                      size: 14,
                    ),
                    SizedBox(width: 0.01 * size.width),
                    Text(
                      "review",
                      style: TextStyle(fontSize: 12, color: labelColor),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
