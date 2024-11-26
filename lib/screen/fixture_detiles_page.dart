import 'package:flutter/material.dart';
import 'package:l/models/fixture_model.dart';

class fixtureDetailsPage extends StatelessWidget {
  const fixtureDetailsPage({super.key, required this.MatchDetails});
  final fixtureModel MatchDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            const Color(0xFF303030),
            const Color(0xFF3A3D47),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 40,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
        ),
        body: Text(
          'data',
          style: TextStyle(fontSize: 50, color: Colors.amber),
        ),
      ),
    );
  }
}
