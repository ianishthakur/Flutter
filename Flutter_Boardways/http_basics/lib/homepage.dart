import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as api;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String dataFromServer = "";
  List dataList = [];
  @override
  void initState() {
    super.initState();

    print("init state called");
    fetchDataFromServer();
  }

  fetchDataFromServer() {
    final endpoint = "https://jsonplaceholder.typicode.com/posts";

    print("I am Fetching data from server");

    final url = Uri.parse(endpoint);

    // int.parse("20"), //20
    // double.parse("abc"), //20.0
    // DataTime.parse(formattedString)

    api.get(url).then((response) {
      print("Status code: ${response.statusCode}");
      print(response.body);
      dataFromServer = response.body;

      final decoded = json.decode(response.body);
      dataList = decoded;

      setState(() {});
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
        body: ListView.builder(
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        final currentItem = dataList[index] as Map;
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.greenAccent.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 4,
                  blurRadius: 5,
                  color: Colors.red.withOpacity(0.3),
                  offset: Offset(3, 3),
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "${index + 1}." + currentItem["title"],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  currentItem["body"],
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
