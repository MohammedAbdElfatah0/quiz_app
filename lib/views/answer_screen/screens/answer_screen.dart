import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_manager.dart';

import '../widgets/custem_information_students.dart';

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
          )
        ],
      ),
    );
  }
}
