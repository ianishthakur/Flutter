
import 'package:flutter/material.dart';

class ListWithBuilder extends StatelessWidget {
  final List<String> countries = [
    "Nepal",
    "China",
    "US",
    "Canada",
    "France",
    "Germany",
    "Russia",
    "India",
    "Finland",
    "Bhutan",
    "Mongolia",
    "Italy",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List with builder")),
      body: ListView.builder(
        itemCount: countries.length,
        //separatorBuilder:(context,index){
        //retuen Divider(
        //color: Colors.black,);},

        itemBuilder: (context, index) {
          final currentCountry = countries[index];

          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(10)),
            child: Text("${index + 1}.$currentCountry"),
          );
        },
      ),
    );
  }
}
