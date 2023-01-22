import 'package:flutter/material.dart';

import '../theme/colors.dart';

class GenreBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var boxWidth = 0.8 * size.width;
    var boxHeight = 0.35 * size.height;
    return Container(
      width: boxWidth,
      height: boxHeight,
      padding: EdgeInsets.all(
        0.015 * size.width,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 0.025 * size.width,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(
              0.01 * size.width,
            ),
            width: double.infinity,
            height: 0.25 * size.height,
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
          Positioned(
            top: 0.235 * size.height,
            right: 0.05 * size.width,
            child: Container(
              padding: EdgeInsets.all(
                0.025 * size.width,
              ),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(0.05),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Text(
                "200",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
            top: 0.265 * size.height,
            child: Container(
              width: 0.35 * size.height,
              padding: EdgeInsets.fromLTRB(
                0.05 * size.width,
                0,
                0.05 * size.width,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Pottor",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 17,
                        color: textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 0.015 * size.height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.play_circle_outlined,
                            size: 18,
                            color: labelColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "session",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: labelColor, fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 0.04 * size.width,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.schedule_rounded,
                            size: 18,
                            color: labelColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "duration",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: labelColor, fontSize: 13),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 0.04 * size.width,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                            color: yellow,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "review",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: labelColor, fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
