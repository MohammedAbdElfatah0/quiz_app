import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_managers.dart';
import 'package:quiz/core/resources/height_manger.dart';
import 'package:quiz/core/resources/padding_values_manager.dart';
import 'package:quiz/core/resources/width_values_managers.dart';

class CustomItemRadioQuizScreen extends StatelessWidget {
  const CustomItemRadioQuizScreen(
      {super.key,
      required this.option,
      required this.onTap,
      this.isSelected = false});

  final String option;
  final GestureTapCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: PaddingValuesManagers.p30,
            vertical: PaddingValuesManagers.p10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected == true
                ? ColorManager.kPrimaryColor.withOpacity(.2)
                : ColorManager.kWhiteColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: GoogleFonts.baloo2(
                  fontSize: FontSize.f20,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kPrimaryColor),
            ),
            isSelected == true
                ? const Icon(
                    CupertinoIcons.checkmark_alt_circle_fill,
                    color: ColorManager.kPrimaryColor,
                  )
                : Container(
                    width: WidthValuesManagers.w20,
                    height: HeightValuesManager.h20,
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(
                              color: ColorManager.kPrimaryColor, width: 1)),
                      color: ColorManager.kWhiteColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
