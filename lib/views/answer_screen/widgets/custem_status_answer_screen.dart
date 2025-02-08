import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class CustemStatusAnswerScreen extends StatelessWidget {
  const CustemStatusAnswerScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 16, vertical: 20),
        margin: const EdgeInsets.only(left: 7),
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: -5,
                  offset: Offset(0, 10)),
            ],
            color: ColorManager.kWhiteColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}