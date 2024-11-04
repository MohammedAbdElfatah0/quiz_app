import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_mananger.dart';
import 'package:quiz/core/resources/font_mananger.dart';
import 'package:quiz/core/resources/strings_value.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorMananger.kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              StringsValue.kStringLogo,
              style: TextStyle(
                  color: ColorMananger.kWhite, fontSize: FontSize.k400),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: FontSize.k21,
                    color: ColorMananger.kSecondColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
