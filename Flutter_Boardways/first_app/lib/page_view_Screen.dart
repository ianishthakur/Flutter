import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  final PageController ourcontroller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: ourcontroller,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print("Page Changed $index");
        },
        
        children: [
          Container(
              color: Colors.green,
              width: double.infinity,
              height: double.infinity,
              child: Center(
              child: MaterialButton(
                height: 50,
                color: Colors.white,
                onPressed: (){
                  ourcontroller.animateToPage(2,
                   duration: Duration(seconds: 2), curve: Curves.ease);

                   
                },
                child: Text("Press Me"),
                
              ),
              ),
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(color: Colors.white),
        ],
      ),
    );
  }
}


///MaterialButton
///textButton

//InkWell
//GestureDetector




