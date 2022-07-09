import 'package:flutter/material.dart';
import 'package:rewardapp/Screens/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),debugShowCheckedModeBanner: false,
    );
  }
}
