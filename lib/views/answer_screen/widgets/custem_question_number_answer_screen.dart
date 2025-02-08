import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';
class CustomQuestionNumberAnswerScreen extends StatelessWidget {
  const CustomQuestionNumberAnswerScreen({
    super.key, required this.order,
  });
  final int order;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 5, spreadRadius: -5, offset: Offset(0, 10)),
          ],
          color: ColorManager.kWhiteColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$order",
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.bold,
              fontSize: FontSize.k21,
            ),
          ),
        ],
      ),
    );
  }
}