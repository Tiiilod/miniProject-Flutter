import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:api_1/test.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: HttpApi());
  }
}