import 'package:flutter/material.dart';
import 'package:weatherapp/screens/screen1.dart';
import 'package:weatherapp/screens/weather.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Weather1(),
    );
  }
}

