import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/const_values.dart';
import 'package:quiz/core/resources/font_managers.dart';
import 'package:quiz/core/resources/height_manger.dart';
import 'package:quiz/core/resources/padding_values_manager.dart';

class CustomQuestionTitleQuizScreen extends StatelessWidget {
  const CustomQuestionTitleQuizScreen({
    super.key,
    required this.outPutStreamQuestionTitle,
  });

  final Stream<int> outPutStreamQuestionTitle;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: outPutStreamQuestionTitle,
      builder: (context, snapshot) =>
          Container(
        padding: const EdgeInsets.all(PaddingValuesManagers.p24),
        alignment: Alignment.center,
        width: double.infinity,
        height: HeightValuesManager.h229,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 100,
                  spreadRadius: -50,
                  offset: Offset(0, 20)),
            ],
            color: ColorManager.kWhiteColor,
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          ConstValue.questionList[snapshot.data == null ? 0 : snapshot.data!]
              .question,
          style: GoogleFonts.baloo2(
            fontWeight: FontWeight.w700,
            fontSize: FontSize.f18,
          ),
        ),
      ),
    );
  }
}
