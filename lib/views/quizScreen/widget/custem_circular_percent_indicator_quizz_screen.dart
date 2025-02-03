import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemCircularPercentIndicatorQuizzScreen extends StatelessWidget {
  const CustemCircularPercentIndicatorQuizzScreen({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundColor: ColorManager.kWhiteColor,
      child: CircularPercentIndicator(
        circularStrokeCap: CircularStrokeCap.round,
        radius: 45,
        percent: 1,
        progressColor: ColorManager.kPrimaryColor,
        animation: true,
        animationDuration: 30000,
        restartAnimation: true,
        backgroundColor: ColorManager.kPrimaryColor.withOpacity(0.38),
        center: Text(
          text,
          style: const TextStyle(
              fontSize: FontSize.k32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
