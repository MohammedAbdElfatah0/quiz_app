import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/views/answer_screen/widgets/custem_question_number_answer_screen.dart';

import '../widgets/custem_information_students.dart';
import '../widgets/custem_status_answer_screen.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> data =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return const Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Column(
        children: [
          CustomInformationStudent(
            name: 'mohamed',
            grade: '5/5',
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomQuestionNumberAnswerScreen(order: 1),
                CustemStatusAnswerScreen()
              ],
            ),
          )
        ],
      ),
    );
  }
}
