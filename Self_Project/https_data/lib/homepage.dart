import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as api;
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'model/user.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String dataFromServer = "";
  List dataList = [];
  List<User> userList = [];
  String error = "";
  String currentState = "pending";
  @override
  void initState() {
    super.initState();
    fetchDataFromServer();
  }

  fetchDataFromServer() {
    final endpoint = "https://jsonplaceholder.typicode.com/user";

    final url = Uri.parse(endpoint);
    currentState = "pending";
    setState(() {});
    api.get(url).then((response) {
      print("Status code: ${response.statusCode}");
      print(response.body);
      dataFromServer = response.body;

      final List decoded = json.decode(response.body);
      userList = decoded.map<User>((item) {
        final convertedUser = User.convertFromJson(item);
        return convertedUser;
      }).toList();

      dataList = decoded;
      currentState = "sucess";
      setState(() {});
    }).catchError((e) {
      print(e);
      currentState = "error";
      error = e.toString();
      setState(() {});
    });
  }

  postDataFromServer() {
    final endpoint = "https://jsonplaceholder.typicode.com/user";
    final uri = Uri.parse(endpoint);
    api.post(uri, body: {
      "email": "email",
      "password": "password",
    }, headers: {
      "Content-type": "application/json"
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  // buildDataListViewWithMap() {
  //   return ListView.builder(
  //     itemCount: dataList.length,
  //     itemBuilder: (context, index) {
  //       final currentItem = dataList[index] as Map;
  //       return Padding(
  //         padding: const EdgeInsets.symmetric(
  //           horizontal: 15,
  //           vertical: 10,
  //         ),
  //         child: Container(
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             border: Border.all(color: Colors.greenAccent.withOpacity(0.3)),
  //             borderRadius: BorderRadius.circular(12),
  //             boxShadow: [
  //               BoxShadow(
  //                 spreadRadius: 4,
  //                 blurRadius: 5,
  //                 color: Colors.red.withOpacity(0.3),
  //                 offset: Offset(3, 3),
  //               ),
  //             ],
  //           ),
  //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "${index + 1}." + currentItem["name"],
  //                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //               ),
  //               SizedBox(
  //                 height: 10,
  //               ),
  //               Text(
  //                 currentItem["phone"],
  //                 style: TextStyle(fontSize: 14),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }


 buildDataListViewWithUser(){
       return ListView.builder(
      itemCount: userList.length,
      itemBuilder: (context, index) {
        final User currentItem = userList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.greenAccent.withOpacity(0.3)),
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
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${index + 1}." + currentItem.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  currentItem.phone,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

 }

 Widget buildBody() {
    if (currentState == "pending") {
      return Center(
          child: SpinKitThreeInOut(
        color: Colors.yellowAccent,
        size: 100.0,
      ));
    }
    if (currentState == "error") {
      return Center(child: Text(error));
    }
    return buildDataListViewWithUser();
  }

  // Widget buildBodyInDifferentWay() {
  //   if (currentState == "pending") {
  //     return Center(
  //         child: SpinKitThreeInOut(
  //       color: Colors.yellowAccent,
  //       size: 100.0,
  //     ));
  //   }
  //   if (currentState == "error") {
  //     return Center(child: Text(error));
  //   }
  //   return buildDataListViewWithMap();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(buildBody());
  }
