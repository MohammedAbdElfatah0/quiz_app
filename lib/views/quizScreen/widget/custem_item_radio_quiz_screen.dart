import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
import 'custem_radio_quiz_screen.dart';

class CustemItemRadioQuiaScreen extends StatelessWidget {
  const CustemItemRadioQuiaScreen({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.kWhiteColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          style: GoogleFonts.baloo2(
              fontSize: FontSize.k18, fontWeight: FontWeight.w600),
        ),
        const CustemRedioQuizScreen()
      ]),
    );
  }
}
