import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Company {
  final String name, catchPhrase, bs;
  Company({required this.name, required this.catchPhrase, required this.bs});
  factory Company.convert(Map json) {
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}
