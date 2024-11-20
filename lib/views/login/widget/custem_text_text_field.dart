
import 'package:flutter/material.dart';
import 'package:quiz/views/login/widget/custem_text_enter_your_name.dart';
import 'package:quiz/views/login/widget/custem_text_field_login_screen.dart';

import '../../../core/resources/height_managers.dart';

class CustemTextandTextFieldLoginScreen extends StatelessWidget {
  const CustemTextandTextFieldLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustemTextEnterYourName(),
        const SizedBox(height: HeightManagers.h10),
        CustemTextFieldLoginScreen(
          onChange: (value) {},
        ),
      ],
    );
  }
}
