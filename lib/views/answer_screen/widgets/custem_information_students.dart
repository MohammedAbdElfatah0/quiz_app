import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustomInformationStudent extends StatelessWidget {
  const CustomInformationStudent({
    super.key,
    required this.name,
    required this.grade,
  });
  final String name;
  final String grade;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: const EdgeInsets.only(left: 16, right: 16, top: 39),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: -5,
              offset: Offset(0, 10),
            ),
          ],
          color: ColorManager.kWhiteColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name : $name",
            style: GoogleFonts.baloo2(
                fontWeight: FontWeight.bold,
                fontSize: FontSize.k21,
                color: ColorManager.kPrimaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'grade:$grade',
            style: GoogleFonts.baloo2(
              fontSize: FontSize.k21,
              fontWeight: FontWeight.w600,
              color: ColorManager.kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
