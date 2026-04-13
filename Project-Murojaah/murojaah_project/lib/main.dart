import 'package:flutter/material.dart';
import 'package:murojaah_project/miniProject.dart';
import 'package:murojaah_project/projectJumat/slicingJumat.dart';
import 'package:murojaah_project/projectKamis/slicingKamis.dart';
import 'package:murojaah_project/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Murojaah Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Slicingjumat(),
    );
  }
}
