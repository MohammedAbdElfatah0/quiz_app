import 'package:flutter/material.dart';

import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/height_managers.dart';

import '../widget/custem_app_bar_quiz_screen.dart';
import '../widget/custem_circular_percent_indicator_quizz_screen.dart';
import '../widget/custem_item_radio_quiz_screen.dart';
import '../widget/custem_question_quizz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: HeightManagers.h88,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    height: HeightManagers.h229,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 120,
                              blurStyle: BlurStyle.outer,
                              spreadRadius: -50,
                              offset: Offset(0, 15))
                        ],
                        color: ColorManager.kWhiteColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const Positioned(
                    top: -30,
                    right: 0,
                    left: 0,
                    child: CustemCircularPercentIndicatorQuizzScreen(
                      text: '40',
                    ),
                  ),
                  const CustemQuestionQuizzScreen(
                    titleQuestion:
                        'In what year did the United States host the FIFA World Cup for the first time?',
                  )
                ],
              ),
              const SizedBox(
                height: HeightManagers.h70,
              ),
              const CustemItemRadioQuiaScreen(),
              const CustemItemRadioQuiaScreen(),
              const CustemItemRadioQuiaScreen(),
              const CustemItemRadioQuiaScreen(),
            ],
          ),
        ),
      ),
      backgroundColor: ColorManager.kLightWhiteColor,
      appBar: CustemAppBarQuizzScreen(
        onTap: () => Navigator.canPop(context),
        text: '7/10',
      ),
    );
  }
}
