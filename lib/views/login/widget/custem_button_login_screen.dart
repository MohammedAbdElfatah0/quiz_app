// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quiz/core/resources/strings_value.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemButtonLoginScreen extends StatelessWidget {
  const CustemButtonLoginScreen({
    Key? key,
    this.onPressed,
    required this.isActiveOutputStream,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final Stream<bool> isActiveOutputStream;
  // final bool isActive;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: isActiveOutputStream,
      builder: (context, snapshot) {
        return ElevatedButton(
          style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 90, vertical: 5)),
              backgroundColor: WidgetStatePropertyAll(snapshot.data == null
                  ? ColorManager.kGreyColor
                  : snapshot.data == true
                      ? ColorManager.kPrimaryColor
                      : ColorManager.kGreyColor)),
          onPressed: snapshot.data == null
              ? null
              : snapshot.data == true
                  ? onPressed
                  : null,
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
      },
    );
  }
}
