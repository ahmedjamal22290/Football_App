import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: GlowText(
                        'Yestrday',
                        blurRadius: 25,
                        glowColor: Colors.transparent,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: GlowText(
                        'Todoy',
                        blurRadius: 25,
                        // glowColor: Colors.transparent,
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff73F590),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: GlowText(
                        'Tomorrow',
                        blurRadius: 25,
                        glowColor: Colors.transparent,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
