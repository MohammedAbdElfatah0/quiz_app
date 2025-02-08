import 'package:flutter/material.dart';
import 'package:quiz/core/resources/const_value.dart';

import '../../../controller/quiz/qiuz_screen_controller.dart';
import 'custem_item_radio_quiz_screen.dart';

class CustemListViewSeparatedQuiz extends StatelessWidget {
  const CustemListViewSeparatedQuiz({
    super.key,
    required QiuzScreenController qiuzScreenController,
  }) : _qiuzScreenController = qiuzScreenController;

  final QiuzScreenController _qiuzScreenController;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => StreamBuilder<int>(
            stream: _qiuzScreenController.outputDataGroupValue,
            builder: (context, snapshot) {
              return CustemItemRadioQuiaScreen(
                onTap: () {
                  _qiuzScreenController.onTapAtItemRadio(index);
                },
                isSelected: snapshot.data == null
                    ? false
                    : snapshot.data == index
                        ? true
                        : false,
                text: ConstValue.questionList[_qiuzScreenController.questionNow]
                    .listOfAnswer[index]
                    .toString(),
              );
            }),
        separatorBuilder: (context, index) => const SizedBox(
              height: 25,
            ),
        itemCount: _qiuzScreenController.countQuestion);
  }
}
