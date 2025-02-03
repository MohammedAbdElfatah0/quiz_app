import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class CustemRedioQuizScreen extends StatelessWidget {
  const CustemRedioQuizScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: const ShapeDecoration(
          shape: CircleBorder(
              side: BorderSide(color: ColorManager.kPrimaryColor, width: 1))),
    );
  }
}
