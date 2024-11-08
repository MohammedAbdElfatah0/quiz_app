import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/height_managers.dart';
import 'package:quiz/core/resources/strings_value.dart';
import 'package:quiz/core/resources/width_manager.dart';

import '../../../core/resources/font_manager.dart';

class CustemBottonBarOnboardingscreen extends StatelessWidget {
  const CustemBottonBarOnboardingscreen({
    super.key,
    required this.dotsCount,
    required this.onTapDotIndecator,
    required this.outPutDotIndecator,
    required this.onTapNext,
     required this.onTapSkip,
    required this.outPutDotTextStart,
    //  required this.outPutDotTextSkip,
  });
  final int dotsCount;
  final void Function(int position) onTapDotIndecator;
  final Stream<int> outPutDotIndecator;
  final Stream<int> outPutDotTextStart;
  // final Stream<int> outPutDotTextSkip;

  final GestureTapCallback onTapNext;
  final GestureTapCallback onTapSkip;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTapSkip,
            child:  const Text(
              StringsValue.kSkip,
              style:  TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: FontSize.k15,
                  color: ColorManager.kSecondColor),
            ),
          ),
          StreamBuilder(
            stream: outPutDotIndecator,
            builder: (context, snapshot) => DotsIndicator(
              mainAxisSize: MainAxisSize.min,
              onTap: onTapDotIndecator,
              dotsCount: dotsCount,
              position: snapshot.data == null ? 0 : snapshot.data!,
              decorator: const DotsDecorator(
                size: Size(WidthManager.w10, HeightManagers.h10),
                activeSize: Size(WidthManager.w12, HeightManagers.h12),
                spacing: EdgeInsets.all(6),
                color: ColorManager.kGreyColor,
                activeColor: ColorManager.kSecondColor,
              ),
            ),
          ),
          StreamBuilder<int>(
              stream: outPutDotTextStart,
              builder: (context, snapshot) {
                return InkWell(
                  onTap: onTapNext,
                  child: Text(
                    snapshot.data == null
                        ? StringsValue.kNext
                        : snapshot.data == dotsCount - 1
                            ? StringsValue.kStart
                            : StringsValue.kNext,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: FontSize.k15,
                        color: ColorManager.kSecondColor),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
