import 'package:flutter/material.dart';
import 'package:l/models/fixture_model.dart';

class fixtureWidget extends StatelessWidget {
  const fixtureWidget({super.key, required this.fixturemodel});
  final fixtureModel fixturemodel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Image.network(
                fixturemodel.homeTeamImage,
                scale: 3,
              ),
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
                padding: const EdgeInsets.only(top: 32.0),
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
              getTime(fixturemodel.matchTime),
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

String getTime(String time) {
  return '${DateTime.parse(time).hour}:${DateTime.parse(time).minute == 0 ? '00' : DateTime.parse(time).minute}';
}
