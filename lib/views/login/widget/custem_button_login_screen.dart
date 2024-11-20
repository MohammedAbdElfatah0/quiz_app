import 'package:flutter/material.dart';
import 'package:quiz/core/resources/strings_value.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemButtonLoginScreen extends StatelessWidget {
  const CustemButtonLoginScreen({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 100, vertical: 5)),
          foregroundColor: WidgetStatePropertyAll(ColorManager.kGreyColor),
          backgroundColor: WidgetStatePropertyAll(ColorManager.kPrimaryColor)),
      onPressed: onPressed,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Text(
          StringsValue.kGetStarted,
          style: TextStyle(
            fontSize: FontSize.k21,
            color: ColorManager.kWhiteColor,
          ),
        ),
      ),
    );
  }
}
