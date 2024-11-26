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
      child: DefaultTabController(
        length: 3,
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
                      Spacer(
                        flex: 2,
                      ),
                      SizedBox(
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              MatchDetails.homeTeamImage,
                              scale: 1.4,
                            ),
                            // Spacer(),
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
                            // Spacer(),
                            Image.network(
                              MatchDetails.awayTeamImage,
                              scale: 1.3,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        // width: 175,
                        child: Text(
                          MatchDetails.status,
                          style: TextStyle(
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 30)
                            ],
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          TabBar(
                            tabs: [
                              Tab(
                                child: Text(
                                  'Preview',
                                  style: TextStyle(
                                    shadows: [Shadow(blurRadius: 20)],
                                    fontSize: 20,
                                    color: const Color(0xFF0BE2CC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Tab(
                                // text: 'Lineaup',
                                child: Text(
                                  'Line Up',
                                  style: TextStyle(
                                    shadows: [Shadow(blurRadius: 20)],
                                    fontSize: 20,
                                    color: const Color(0xFF0BE2CC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'News',
                                  style: TextStyle(
                                    shadows: [Shadow(blurRadius: 20)],
                                    fontSize: 20,
                                    color: const Color(0xFF0BE2CC),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Transform.translate(
                  offset: Offset(0, -80),
                  child: TabBarView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            padding: EdgeInsets.only(left: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 26, 26, 26),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(22),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Home Team : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0BB965),
                                      fontSize: 18),
                                ),
                                Text(
                                  MatchDetails.homeTeam,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 12),
                            padding: EdgeInsets.only(left: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 26, 26, 26),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(22),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Away  Team : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 185, 37, 11),
                                      fontSize: 18),
                                ),
                                Text(
                                  MatchDetails.awayTeam,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          'Line Up Content',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Center(
                        child: Text(
                          'News Content',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
