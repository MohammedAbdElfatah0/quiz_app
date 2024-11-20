import 'package:flutter/material.dart';
import 'package:quiz/core/resources/strings_value.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemTextEnterYourName extends StatelessWidget {
  const CustemTextEnterYourName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        StringsValue.kTitleLoginScreen,
        style: TextStyle(
          fontSize: FontSize.k18,
          color: ColorManager.kPrimaryColor,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
