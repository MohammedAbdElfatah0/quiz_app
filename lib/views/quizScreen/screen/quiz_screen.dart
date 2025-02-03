import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_manager.dart';
import 'package:quiz/core/resources/strings_value.dart';

import '../widget/custem_app_bar_quiz_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: ColorManager.kLightWhiteColor,
      appBar: CustemAppBarQuizzScreen(
        onTap: () => Navigator.canPop(context),
        text: '7/10',
      ),
    );
  }
}
