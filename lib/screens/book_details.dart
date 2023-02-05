import 'package:flutter/material.dart';

import '../widgets/page_app_bar.dart';
import '../theme/colors.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PageAppBar("Book Title Here", context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.42 * size.height,
              padding: EdgeInsets.fromLTRB(
                0.05 * size.height,
                0.02 * size.height,
                0.05 * size.height,
                0.04 * size.height,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.ctfassets.net/usf1vwtuqyxm/24YWmI4UcyoMwj7wdKrEcL/374de1941927db12bd844fb197eab11f/English_Harry_Potter_3_Epub_9781781100233.jpg?w=914&q=70&fm=jpg',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 0.4 * size.height,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(
                0.025 * size.height,
                0.035 * size.height,
                0.025 * size.height,
                0.01 * size.height,
              ),
              decoration: BoxDecoration(
                color: darkBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Harry Potter",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 0.01 * size.height),
                          Text(
                            "J. K. Rowlings",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$ 10.50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.025 * size.height),
                  Container(
                    height: 0.2 * size.height,
                    child: SingleChildScrollView(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(height: 0.025 * size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/readBook');
                        },
                        child: Text(
                          "Read Book",
                          style: TextStyle(
                            color: darkBlue,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: creamYellow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
