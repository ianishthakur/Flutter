import 'package:flutter/material.dart';

class GridWithBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid With Builder")),
      body: GridView.builder(
          itemCount: 40,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (ctx, index) {
            return Container(
                color: Colors.pink,
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ));
          }),
    );
  }
}
