import 'package:flutter/material.dart';
import 'package:pita_course/ui/ThirdPage.dart';
import 'package:pita_course/ui/firstPage.dart';
import 'package:pita_course/ui/mapWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPage(),
    );
  }
}
