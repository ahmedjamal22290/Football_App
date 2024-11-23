import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class daysWidget extends StatelessWidget {
  const daysWidget({super.key, this.color, required this.text, this.textColor});
  final Color? color;
  final Color? textColor;
  final String text;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: GlowText(
        '$text',
        blurRadius: 25,
        glowColor: color ?? Colors.white,
        style: TextStyle(
          fontSize: textColor == null ? 20 : 25,
          color: textColor ?? Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
