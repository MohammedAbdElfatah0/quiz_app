// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemCircularPercentIndicatorQuizzScreen extends StatelessWidget {
  const CustemCircularPercentIndicatorQuizzScreen({
    super.key,
    required this.outPutStreamTime,
    required this.outPutAnimationProgress,
  });

  final Stream<int> outPutStreamTime;
  final Stream<double> outPutAnimationProgress;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundColor: ColorManager.kWhiteColor,
      child: StreamBuilder<double>(
          stream: outPutAnimationProgress,
          builder: (context, snapshot) {
            return CircularPercentIndicator(
              circularStrokeCap: CircularStrokeCap.round,
              radius: 45,
              percent: snapshot.data == null ? 0 : snapshot.data!,
              progressColor: ColorManager.kPrimaryColor,
              animationDuration: 30000,
              restartAnimation: true,
              backgroundColor: ColorManager.kPrimaryColor.withOpacity(0.38),
              center: StreamBuilder<int>(
                  stream: outPutStreamTime,
                  builder: (context, snapshot) {
                    return Text(
                      snapshot.data == null ? '0' : snapshot.data.toString(),
                      style: const TextStyle(
                          fontSize: FontSize.k32, fontWeight: FontWeight.w600),
                    );
                  }),
            );
          }),
    );
  }
}
