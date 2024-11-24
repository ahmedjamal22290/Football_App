import 'package:flutter/material.dart';

class fixtureWidget extends StatelessWidget {
  const fixtureWidget({
    super.key,
    required this.awayTeam,
    required this.awayTeamImage,
    required this.homeTeam,
    required this.homeTeamImage,
    required this.matchTime,
    required this.niOrMo,
  });
  String homeTeamImage, awayTeamImage, homeTeam, awayTeam, matchTime, niOrMo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.network(
              "https://th.bing.com/th/id/OIP.rZBmj3ER6WuvkyX8EDAa2QAAAA?w=400&h=400&rs=1&pid=ImgDetMain",
              scale: 10,
            ),
            Image.network(
              "https://apkdownloadgame.com/wp-content/uploads/2022/04/Barcelona-Logo-2023.png",
              scale: 12,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Real Madrid',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Text(
              'Barchelona',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(
              '9:00',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'PM',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
