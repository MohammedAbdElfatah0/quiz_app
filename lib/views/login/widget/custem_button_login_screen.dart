// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_manager.dart';

class CustemButtonLoginScreen extends StatelessWidget {
  const CustemButtonLoginScreen({
    Key? key,
    this.onPressed,
    required this.isActiveOutputStream,
    required this.title,
  }) : super(key: key);
  final VoidCallback? onPressed;
  final Stream<bool> isActiveOutputStream;
  final String title;
  // final bool isActive;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: isActiveOutputStream,
      builder: (context, snapshot) {
        return ElevatedButton(
          style: ButtonStyle(
              padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              title,
              style: const TextStyle(
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
