import 'package:flutter/material.dart';
import 'package:hipoz/Screens/stackex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profile1(),
      debugShowCheckedModeBanner: false,

    );
  }
}

