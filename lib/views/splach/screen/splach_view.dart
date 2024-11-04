import 'package:flutter/material.dart';
import 'package:quiz/core/resources/color_mananger.dart';
import 'package:quiz/core/resources/strings_value.dart';

class SplachView extends StatelessWidget {
  const SplachView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorMananger.kPrimaryColor,
      body: Center(
        child: Text(
          StringsValue.kStringLogo,
          style: TextStyle(color: ColorMananger.kWhite, fontSize: 400),
        ),
      ),
    );
  }
}
