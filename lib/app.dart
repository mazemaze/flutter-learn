import 'package:education_app/home.dart';
import 'package:flutter/material.dart';

class EducationApp extends StatelessWidget {
  const EducationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Education",
      theme: ThemeData(),
      home: Home(),
    );
  }
}
