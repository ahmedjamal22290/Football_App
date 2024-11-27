import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:l/cubits/matches_cubiit/get_matches_cubit.dart';
import 'package:l/custom_widget/days_widget.dart';
import 'package:l/custom_widget/fixture_widget.dart';
import 'package:l/custom_widget/league_section_widget.dart';
import 'package:l/models/fixture_model.dart';

DateTime now = DateTime.now();
Map<int, String> monthMap = {
  1: 'Jan',
  2: 'Feb',
  3: 'Mar',
  4: 'Apr',
  5: 'May',
  6: 'Jun',
  7: 'Jul',
  8: 'Aug',
  9: 'Sep',
  10: 'Oct',
  11: 'Nov',
  12: 'Dec'
};

class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: ListView(
          children: [
            Center(
              child: SizedBox(
                height: 50,
                width: double.maxFinite,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      DateTime tmp = now.add(Duration(days: -1 + index));
                      if (index == 0 || index == 1) {
                        if (index == 0)
                          return daysWidget(
                              color: Colors.transparent, text: 'Yestrday');
                        else
                          return daysWidget(
                            text: 'Todoy',
                            textColor: Color(0xFF56E976),
                          );
                      }
                      return daysWidget(
                          color: Colors.transparent,
                          text: '${monthMap[tmp.month]}.${tmp.day}');
                    }),
              ),
            ),
            BlocProvider(
              create: (context) => getMatchesCubit(leagueID: '2'),
              child: leagueSectionWidget(
                leagueName: 'Champions League',
              ),
            ),
            // BlocProvider(
            //   create: (context) => getMatchesCubit(leagueID: '17'),
            //   child: leagueSectionWidget(
            //     leagueName: 'AFC',
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
