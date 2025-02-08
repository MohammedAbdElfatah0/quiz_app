import 'package:flutter/material.dart';

import '../../../controller/answer_screen/answer_controller_screen.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/const_value.dart';
import '../widgets/custem_information_students.dart';
import '../widgets/custem_question_number_answer_screen.dart';
import '../widgets/custem_status_answer_screen.dart';

class AnswerScreen extends StatefulWidget {
  const AnswerScreen({super.key});

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  late AnswerScreenController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnswerScreenController();
  }

  @override
  Widget build(BuildContext context) {
    Map studentAnswers = ModalRoute.of(context)!.settings.arguments as Map;
    controller.getStudentAnswer(studentAnswers);
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomInformationStudent(
                  name: controller.studentAnswer['name'],
                  grade:
                      "    ${controller.getCountAnswerCorrect()}     /       ${controller.answer.length}"),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomQuestionNumberAnswerScreen(
                                order: index + 1,
                                isCorrect: controller.answer[index]),
                            CustemStatusAnswerScreen(
                              qeustion: ConstValue.questionList[index].question,
                              answer:
                                  controller.studentAnswer['listCorrectAnswer']
                                              [index] ==
                                          -1
                                      ? "user not choose"
                                      : ConstValue
                                              .questionList[index].listOfAnswer[
                                          controller.studentAnswer[''][index]],
                              correctAnswer: ConstValue
                                  .questionList[index]
                                  .listOfAnswer[ConstValue
                                      .questionList[index].correctAnswer]
                                  .toString(),
                              isCorrect: controller.answer[index],
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount:
                      controller.studentAnswer['listCorrectAnswer'].length),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
