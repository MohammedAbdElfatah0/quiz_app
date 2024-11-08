import 'package:flutter/material.dart';
import 'package:quiz/controller/splach/splach_controller.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_manager.dart';
import 'package:quiz/core/resources/strings_value.dart';
import '../widget/custem_button_splach_screen.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              StringsValue.kStringLogo,
              style: TextStyle(
                  color: ColorManager.kWhiteColor, fontSize: FontSize.k400),
            ),
            CustemButtonSplachScreen(
              onPressed: () {
                SplachController.goToOnBoardingView(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
