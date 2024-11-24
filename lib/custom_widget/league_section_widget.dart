import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/cubits/matches_cubiit/get_matches_cubit.dart';
import 'package:l/cubits/matches_cubiit/get_matches_states.dart';
import 'package:l/custom_widget/fixture_widget.dart';
import 'package:l/models/fixture_model.dart';
import 'package:l/services/fixtures_service.dart';

class leagueSectionWidget extends StatelessWidget {
  const leagueSectionWidget(
      {super.key, required this.leagueIcon, required this.leagueName});
  final String leagueName;
  final IconData leagueIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 5, right: 5, bottom: 15, top: 7),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF303030),
                const Color(0xFF3A3D47),
              ]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22)),
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.outer,
                blurRadius: 50,
                color: const Color.fromARGB(176, 0, 0, 0))
          ]),
      child: BlocBuilder<getMatchesCubit, fixturesStates>(
        builder: (context, state) {
          if (state is thereIsNoMatches) {
            return ListBody(
              children: [
                Row(
                  children: [
                    Icon(
                      leagueIcon,
                      color: Colors.white,
                    ),
                    Text(
                      leagueName,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 0.2,
                ),
                Center(
                  child: Text(
                    'There is no matches',
                    style: TextStyle(color: Colors.teal, fontSize: 40),
                  ),
                )
              ],
            );
          } else if (state is matchesLoaded) {
            return ListBody(
              children: getListOfMatches(state.listFix),
              // children: [
              //   Row(
              //     children: [
              //       Icon(
              //         leagueIcon,
              //         color: Colors.white,
              //       ),
              //       Text(
              //         leagueName,
              //         style: TextStyle(
              //           color: Colors.white,
              //         ),
              //       )
              //     ],
              //   ),
              //   Divider(
              //     thickness: 0.2,
              //   ),
              //   fixtureWidget(
              //     fixturemodel: state.listFix[2],
              //     // fixturemodel: fixtureModel(
              //     //     status: 'NS',
              //     //     awayTeam: 'Barchelona',
              //     //     awayTeamImage:
              //     //         "https://apkdownloadgame.com/wp-content/uploads/2022/04/Barcelona-Logo-2023.png",
              //     //     homeTeam: 'Real Madrid',
              //     //     homeTeamImage:
              //     //         "https://th.bing.com/th/id/OIP.rZBmj3ER6WuvkyX8EDAa2QAAAA?w=400&h=400&rs=1&pid=ImgDetMain",
              //     //     matchTime: '9:00',
              //     //     PmOrAm: 'PM'),
              //   ),
              // ],
            );
          } else {
            return Text('data');
          }
        },
      ),
    );
  }
}

List<Widget> getListOfMatches(List<fixtureModel> matchesData) {
  List<Widget> resul = [
    Row(
      children: [
        Icon(
          Icons.flag,
          color: Colors.white,
        ),
        Text(
          'La Liga',
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ),
    Divider(
      thickness: 0.2,
    ),
  ];
  for (int i = 0; i < matchesData.length; i++) {
    resul.add(fixtureWidget(fixturemodel: matchesData[i]));
    resul.add(Divider(
      thickness: 0.2,
      endIndent: 40,
    ));
  }
  return resul;
}
