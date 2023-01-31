import 'package:flutter/material.dart';

import '../widgets/profile_list_box.dart';
import '../widgets/page_app_bar.dart';
import '../widgets/profile_stats_box.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageAppBar("Username Here", context),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Column(
              children: [
                // CustomImage(
                //   profile["image"]!,
                //   width: 70,
                //   height: 70,
                //   radius: 20,
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: StatBox(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: StatBox(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: StatBox(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            ListBox(),
            SizedBox(height: 20),
            ListBox(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
