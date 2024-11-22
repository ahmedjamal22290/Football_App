import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
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
      // appBar: AppBar(
      //     elevation: 0,
      //     backgroundColor: const Color(0xFF383838),
      //     actions: [
      //       Expanded(
      //         child: ListView(
      //           scrollDirection: Axis.horizontal,
      //           children: [
      //             Text(
      //               'data',
      //               style: TextStyle(fontSize: 40, color: Colors.white),
      //             ),
      //             Text(
      //               'data',
      //               style: TextStyle(fontSize: 40, color: Colors.white),
      //             ),
      //             Text(
      //               'data',
      //               style: TextStyle(fontSize: 40, color: Colors.white),
      //             ),
      //             Text(
      //               'data',
      //               style: TextStyle(fontSize: 40, color: Colors.white),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ]
      //     // actions: [
      //     //   GradientText(
      //     //     'FOOT',
      //     //     gradientDirection: GradientDirection.btt,
      //     //     gradientType: GradientType.linear,
      //     //     colors: [const Color.fromARGB(255, 63, 63, 63), Colors.white],
      //     //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      //     //   ),
      //     //   Text(
      //     //     ' -App-',
      //     //     style: TextStyle(
      //     //         color: Colors.tealAccent,
      //     //         fontSize: 20,
      //     //         fontWeight: FontWeight.bold),
      //     //   ),
      //     //   Spacer()
      //     // ],
      //     ),

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
            leagueSectionWidget(
              leagueIcon: Icons.flag,
              leagueName: 'La Liga',
            ),
          ],
        ),
      ),
    );
  }
}
