import 'package:flutter/material.dart';

import '../widgets/page_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PageAppBar("Username Here", context),
      body: Column(
        children: [],
      ),
    );
  }
}
