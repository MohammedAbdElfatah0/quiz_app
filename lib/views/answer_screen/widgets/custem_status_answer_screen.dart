import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustemStatusAnswerScreen extends StatelessWidget {
  const CustemStatusAnswerScreen({
    super.key,
    required this.isCorrect,
    required this.qeustion,
    required this.answer,
    required this.correctAnswer,
  });
  final bool isCorrect;
  final String qeustion;
  final String answer;
  final String correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 7),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(blurRadius: 5, spreadRadius: -5, offset: Offset(0, 10)),
            ],
            color: isCorrect ? ColorManager.kGreenColor : Colors.red,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                qeustion,
                style: GoogleFonts.baloo2(
                    color: ColorManager.kLightWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: -10,
                      offset: Offset(5, 12),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  color: ColorManager.kWhiteColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        isCorrect
                            ? CupertinoIcons.check_mark_circled_solid
                            : CupertinoIcons.clear_circled_solid,
                        color: ColorManager.kPrimaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        answer,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.baloo2(
                            color: ColorManager.kPrimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            isCorrect == false
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: -10,
                            offset: Offset(5, 12),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: ColorManager.kWhiteColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Icon(
                              CupertinoIcons.check_mark_circled_solid,
                              color: ColorManager.kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              correctAnswer,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.baloo2(
                                  color: ColorManager.kPrimaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : SizedBox.fromSize()
          ],
        ),
      ),
    );
  }
}
