import 'package:flutter/material.dart';

import 'company.dart';

class User {
  final int id;
  final String name, username, email, phone, website;
  final address;
  final Company? company;
  final String companyName;

  User(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website,
      required this.address,
      required this.company,
      required this.companyName});

  factory User.convertFromJson(Map json) {
    final value = json['address'];
    return User(
      id: json["id"] ?? -1,
      name: json["name"] ?? "",
      username: json["username"] ?? "",
      email: json["email"] ?? "",
      phone: json["phone"] ?? "",
      website: json["website"] ?? "",
      address: "",
      company:
          json['company'] == null ? null : Company.convert(json["company"]),
      companyName: json["company"]["name"],
    );
  }
}
