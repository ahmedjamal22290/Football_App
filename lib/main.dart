import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/cubits/matches_cubiit/get_matches_cubit.dart';
import 'package:l/screen/home_page.dart';
import 'package:l/services/fixtures_service.dart';

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
