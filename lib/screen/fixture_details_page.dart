import 'package:flutter/material.dart';
import 'package:l/custom_widget/fixture_widget.dart';
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
          body: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -90),
                child: Container(
                  height: 275,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/wp9607751-stadium-light-wallpapers.jpg'),
                      fit: BoxFit.cover, // Adjust image scaling
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: [
                            Image.network(
                              MatchDetails.homeTeamImage,
                              scale: 1.4,
                            ),
                            Spacer(),
                            Column(
                              children: [
                                Text(
                                  getTime(MatchDetails.matchTime),
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                            color: Colors.black, blurRadius: 30)
                                      ],
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  DateTime.parse(MatchDetails.matchTime).hour >
                                          12
                                      ? 'PM'
                                      : 'AM',
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                            color: Colors.black, blurRadius: 30)
                                      ],
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.network(
                              MatchDetails.awayTeamImage,
                              scale: 1.4,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
