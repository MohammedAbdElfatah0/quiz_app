import 'package:flutter/material.dart';
import 'package:quiz/core/resources/strings_value.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemButtonSplachScreen extends StatelessWidget {
  const CustemButtonSplachScreen({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Text(
          StringsValue.kGetStarted,
          style: TextStyle(
            fontSize: FontSize.k21,
            color: ColorManager.kSecondColor,
          ),
        ),
      ),
    );
  }
}
