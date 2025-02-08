// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/const_value.dart';
import '../../../core/resources/font_manager.dart';

class CustemItemRadioQuiaScreen extends StatelessWidget {
  const CustemItemRadioQuiaScreen({
    Key? key,
    required this.outputDataStreamNextQuestion,
    required this.onTap,
    this.isSelected = false,
    required this.index,
  }) : super(key: key);
  final Stream<int> outputDataStreamNextQuestion;
  final GestureTapCallback onTap;
  final bool isSelected;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected
                ? ColorManager.kPrimaryColor.withOpacity(0.25)
                : ColorManager.kWhiteColor,
            borderRadius: BorderRadius.circular(20)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          StreamBuilder<int>(
              stream: outputDataStreamNextQuestion,
              builder: (context, snapshot) {
                return Text(
                  ConstValue
                      .questionList[snapshot.data == null ? 0 : snapshot.data!]
                      .listOfAnswer[index]
                      .toString(),
                  style: GoogleFonts.baloo2(
                      fontSize: FontSize.k18, fontWeight: FontWeight.w600),
                );
              }),
          isSelected
              ? const Icon(
                  CupertinoIcons.checkmark_circle_fill,
                  color: ColorManager.kPrimaryColor,
                )
              : Container(
                  width: 20,
                  height: 20,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(
                          side: BorderSide(
                              color: ColorManager.kPrimaryColor, width: 1))),
                )
        ]),
      ),
    );
  }
}
