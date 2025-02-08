import 'package:flutter/material.dart';
import 'package:quiz/controller/quiz/quiz_screen_controller.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/height_manger.dart';
import 'package:quiz/core/resources/padding_values_manager.dart';
import 'package:quiz/core/resources/strings_values.dart';
import 'package:quiz/core/widgets/custom_material_button.dart';
import 'package:quiz/view/quiz/widgets/custom_app_bar_quiz_screen.dart';
import 'package:quiz/view/quiz/widgets/custom_circle_percent_indictor_quiz_screen.dart';
import 'package:quiz/view/quiz/widgets/custom_list_view_options_quiz_screen.dart';
import 'package:quiz/view/quiz/widgets/custom_question_title_quiz_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  late QuizScreenController _quizScreenController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _quizScreenController = QuizScreenController(this, context);
    _quizScreenController.forwardAnimation();
    _quizScreenController.restartAnimation();
  }

  @override
  void dispose() {
    _quizScreenController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String name = ModalRoute.of(context)!.settings.arguments as String;
    _quizScreenController.addName(name);
    return Scaffold(
      appBar: CustomAppBarQuizScreen(
        textQuestionStream:_quizScreenController.outPutQuestionNow,
        onTap: () {
          Navigator.of(context).canPop();
        },
      ),
      body: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: PaddingValuesManagers.p24),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: HeightValuesManager.h88,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomQuestionTitleQuizScreen(
                        outPutStreamQuestionTitle:
                        _quizScreenController.outPutStreamQuestion),
                    Positioned(
                      top: -29,
                      right: 0,
                      left: 0,
                      child: CustomCirclePercentIndicatorQuizScreen(
                        outPutStreamTime:
                        _quizScreenController.outPutStreamTime,
                        outPutAnimationProgress:
                        _quizScreenController.outPutAnimationProgress,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: HeightValuesManager.h70,
                ),
                CustomListViewOptionsQuizScreen(
                  onTap: (indexValue) {
                    _quizScreenController.onTapAtItemRadio(indexValue);
                  },
                  outputDataGroupValueRadio:
                  _quizScreenController.outPutDataGroupValueIndex,
                  outPutStreamQuestion:
                  _quizScreenController.outPutStreamQuestion,
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: ColorManager.kLightWhite,

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            right: PaddingValuesManagers.p24,
            left: PaddingValuesManagers.p24,
            bottom: PaddingValuesManagers.p24),
        child: CustomStartButtonLoginScreen(
            text: StringsValues.kNext,
            onPressed: () {
              _quizScreenController.nextQuestion();
            },
            isActiveOutputStream: _quizScreenController.isActiveOutputStream),
      ),
    );
  }
}
