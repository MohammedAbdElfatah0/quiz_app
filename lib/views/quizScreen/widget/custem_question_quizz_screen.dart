import 'package:flutter/material.dart';
import 'package:quiz/core/resources/font_manager.dart';
import 'package:quiz/core/resources/height_managers.dart';

class CustemQuestionQuizzScreen extends StatelessWidget {
  const CustemQuestionQuizzScreen({
    super.key, required this.titleQuestion,
  });
  final String titleQuestion;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HeightManagers.h229,
      padding: const EdgeInsets.all(24),
      alignment: AlignmentDirectional.center,
      child:  Text(
        titleQuestion,
        style:const TextStyle(fontSize: FontSize.k18, fontWeight: FontWeight.w600),
        textAlign: TextAlign.start,
      ),
    );
  }
}
