import 'package:flutter/material.dart';
import 'package:sbce_student_app_api/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuSystem(),
    );
  }
}
