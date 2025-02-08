import 'package:flutter/material.dart';
import 'package:quiz/core/resources/font_manager.dart';
import 'package:quiz/core/resources/height_managers.dart';

import '../../../core/resources/const_value.dart';

class CustemQuestionQuizzScreen extends StatelessWidget {
  const CustemQuestionQuizzScreen({
    super.key,
    required this.outputDataStreamNextQuestion,
  });
  final Stream<int> outputDataStreamNextQuestion;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: HeightManagers.h229,
      padding: const EdgeInsets.all(24),
      alignment: AlignmentDirectional.center,
      child: StreamBuilder<int>(
          stream: outputDataStreamNextQuestion,
          builder: (context, snapshot) {
            return Text(
              ConstValue
                  .questionList[snapshot.data == null ? 0 : snapshot.data!]
                  .question,
              style: const TextStyle(
                  fontSize: FontSize.k18, fontWeight: FontWeight.w600),
              textAlign: TextAlign.start,
            );
          }),
    );
  }
}
