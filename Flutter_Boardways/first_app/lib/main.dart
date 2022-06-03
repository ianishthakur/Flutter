import 'package:first_app/stack.dart';
import 'package:flutter/material.dart';
import 'grid_view_with_builder.dart';
import 'grid_view_with_count.dart';
import 'image_screen.dart';
import 'insta_Profile.dart';
import 'page_view_Screen.dart';
import 'textfield_Screen.dart';

void main() {
  runApp(OurApp());
}

//

enum Types { ASSET, NETWORK, FILE, MEMEORY }

class OurApp extends StatelessWidget {
  final redColor = Colors.red;
  final whiteHex = Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    // final whiteRgb = Color.fromRGBO(r, g, b, opacity);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Our app",
      home: GridWithCountScreen(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

/// List of widgets 

/// Basic widgets : 
/// 1. Container 
/// 2. Column 
/// 3. Row 
/// 4. Stack 
/// 5. Center 


/// Scroll: 
/// 1. ListView 
/// 2. GridView 


/// UI: 
/// 1. Text 
/// 2. Image 
/// 3. Icon 
/// 4. Button 


/// Spacing: 
/// 1. Padding 
/// 2. Margin 
/// 3. SizedBox 



