import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:l/cubits/matches_cubiit/get_matches_cubit.dart';
import 'package:l/cubits/matches_cubiit/get_matches_states.dart';
import 'package:l/custom_widget/fixture_widget.dart';
import 'package:l/models/fixture_model.dart';
import 'package:l/services/fixtures_service.dart';

class leagueSectionWidget extends StatelessWidget {
  const leagueSectionWidget({super.key, required this.leagueName});
  final String leagueName;
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
            );
          } else {
            return Text('data');
          }
        },
      ),
    );
  }

  List<Widget> getListOfMatches(List<fixtureModel> matchesData) {
    List<Widget> resul = [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 22,
              child: Image.network(
                colorBlendMode: BlendMode.dstATop,
                matchesData[0].leagueImage ??
                    'https://th.bing.com/th/id/OIP.x4nIPTx5-SyEnc16SZ0HrAAAAA?rs=1&pid=ImgDetMain',
                scale: 5,
              ),
            ),
          ),
          Text(
            leagueName,
            style: TextStyle(
              fontSize: 20,
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
}
