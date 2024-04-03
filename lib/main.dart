import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern/src/pattern_home.dart';



void main() {

  runApp(const MyApp());
}






class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PatternHome(),
    );
  }
}
