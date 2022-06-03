import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfile(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}
