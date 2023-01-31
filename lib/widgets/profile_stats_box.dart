import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/colors.dart';

class StatBox extends StatelessWidget {
  const StatBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          //SvgPicture.asset(icon, color: color, width: 22, height: 22,),
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/star.svg'),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "100 Books",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
