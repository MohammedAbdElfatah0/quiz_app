import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_manager.dart';
import 'package:quiz/core/resources/height_managers.dart';
import '../../../models/on_bording/onboarding_screen_model.dart';

class CustemItemPageViewOnBoarding extends StatelessWidget {
  const CustemItemPageViewOnBoarding({
    super.key,
    required this.onBoardingScreenModel,
  });
  final OnBoardingScreenModel onBoardingScreenModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: HeightManagers.h350,
            image: AssetImage(onBoardingScreenModel.onBoardingImage),
          ),
          const SizedBox(
            height: HeightManagers.h108,
          ),
          Text(
            onBoardingScreenModel.onBoardingTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: ColorManager.kSecondColor,
                fontSize: FontSize.k32,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: HeightManagers.h12,
          ),
          Text(
            textAlign: TextAlign.center,
            onBoardingScreenModel.onBoardingSubTitle,
            style: const TextStyle(
                color: ColorManager.kSecondColor,
                fontSize: FontSize.k21,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
