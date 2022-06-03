import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpClient;

import '../model/user.dart';

class UserListScreen extends StatefulWidget {
  const UserListScreen({Key? key}) : super(key: key);

  @override
  State<UserListScreen> createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  fetchUsers() async {
    try {
      final endpoint = "https://jsonplaceholder.typicode.com/user";
      final uri = Uri.parse(endpoint);
      final response = await httpClient.get(uri);
      final List decoded = json.decode(response.body);
      final List<User> tempUsers =
          decoded.map<User>((e) => User.convertFromJson(e)).toList();

      users = tempUsers;
      final user1 = tempUsers[0];
      final userName = user1.company?.name;
    } catch (e, s) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
