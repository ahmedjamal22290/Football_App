import 'package:flutter/material.dart';
import 'package:l/screen/home_page.dart';

void main() {
  runApp(const footApp());
}

class footApp extends StatelessWidget {
  const footApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
