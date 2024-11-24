import 'package:flutter/material.dart';
import 'package:l/models/fixture_model.dart';

class fixtureWidget extends StatelessWidget {
  const fixtureWidget({super.key, required this.fixturemodel});
  final fixtureModel fixturemodel;
  // final DateTime dt = DateTime.parse(fixturemodel.matchTime);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.network(
              fixturemodel.homeTeamImage,
              scale: 3,
            ),
            Image.network(
              fixturemodel.awayTeamImage,
              scale: 3,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              Text(
                fixturemodel.homeTeam,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  fixturemodel.awayTeam,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          fixturemodel.status,
          style: TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Column(
          children: [
            Text(
              '${DateTime.parse(fixturemodel.matchTime).hour}:${DateTime.parse(fixturemodel.matchTime).minute}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              DateTime.parse(fixturemodel.matchTime).hour > 12 ? 'PM' : 'AM',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
