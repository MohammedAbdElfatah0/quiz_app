
import 'package:flutter/material.dart';

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
        itemBuilder: (context, index) => CustemItemRadioQuiaScreen(
              text: _qiuzScreenController.option[index],
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: 25,
            ),
        itemCount: _qiuzScreenController.option.length);
  }
}
