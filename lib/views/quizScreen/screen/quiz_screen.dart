import 'package:flutter/material.dart';
import 'package:quiz/controller/quiz/qiuz_screen_controller.dart';

import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/height_managers.dart';
import 'package:quiz/core/resources/strings_value.dart';
import 'package:quiz/views/login/widget/custem_button_login_screen.dart';

import '../widget/custem_app_bar_quiz_screen.dart';
import '../widget/custem_circular_percent_indicator_quizz_screen.dart';
import '../widget/custem_list_view_separated_quiz.dart';
import '../widget/custem_question_quizz_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  late QiuzScreenController _qiuzScreenController;

  @override
  void initState() {
    super.initState();
    _qiuzScreenController = QiuzScreenController(this);
    _qiuzScreenController.forwardAnimation();
    _qiuzScreenController.restartAnimation();
  }

  @override
  void dispose() {
    _qiuzScreenController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // String name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
                    Positioned(
                      top: -30,
                      right: 0,
                      left: 0,
                      child: CustemCircularPercentIndicatorQuizzScreen(
                        outPutStreamTime:
                            _qiuzScreenController.outPutStreamTime,
                        outPutAnimationProgress:
                            _qiuzScreenController.outPutAnimationProgress,
                      ),
                    ),
                    CustemQuestionQuizzScreen(
                        outputDataStreamNextQuestion:
                            _qiuzScreenController.outPutStreamNextQuestion)
                  ],
                ),
                const SizedBox(
                  height: HeightManagers.h70,
                ),
                CustemListViewSeparatedQuiz(
                    qiuzScreenController: _qiuzScreenController)
              ],
            ),
          ),
        ),
      ),
      backgroundColor: ColorManager.kLightWhiteColor,
      appBar: CustemAppBarQuizzScreen(
        onTap: () => Navigator.canPop(context),
        text:
            '${_qiuzScreenController.questionNow + 1}/${_qiuzScreenController.countQuestion}',
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: CustemButtonLoginScreen(
            title: StringsValue.kNext,
            onPressed: () {
              _qiuzScreenController.nextQuestion();
            },
            isActiveOutputStream: _qiuzScreenController.isActiveOutputStream),
      ),
    );
  }
}
