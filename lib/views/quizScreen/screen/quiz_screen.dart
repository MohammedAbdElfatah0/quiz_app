import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_manager.dart';

import '../widget/custem_app_bar_quiz_screen.dart';

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
              Stack(
                children: [
                  CircularPercentIndicator(
                    radius: 45,
                    percent: 1,
                    progressColor: ColorManager.kPrimaryColor,
                    animation: true,
                    animationDuration: 30000,
                    backgroundColor:
                        ColorManager.kPrimaryColor.withOpacity(0.38),
                    center: const Text(
                      '30',
                      style: TextStyle(
                          fontSize: FontSize.k32, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              )
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
