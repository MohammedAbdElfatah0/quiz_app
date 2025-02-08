import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_managers.dart';
import 'package:quiz/core/resources/height_manger.dart';
import 'package:quiz/core/resources/width_values_managers.dart';
class CustomStartButtonLoginScreen extends StatelessWidget {
  const CustomStartButtonLoginScreen({
    super.key,
    required this.onPressed,
    required this.isActiveOutputStream, required this.text,
  });

  final VoidCallback onPressed;
  final Stream<bool> isActiveOutputStream;
final String text;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: isActiveOutputStream,
      builder: (context, snapshot) => MaterialButton(
        height: WidthValuesManagers.w10,
        minWidth: WidthValuesManagers.w20,
        onPressed: snapshot.data == null
            ? null
            : snapshot.data == true
                ? onPressed
                : null,
        child: Container(
          alignment: AlignmentDirectional.center,
          height: HeightValuesManager.h59,
          width: double.infinity,
          decoration: BoxDecoration(
              color: snapshot.data == null
                  ? ColorManager.kGreyColor
                  : snapshot.data == true
                      ? ColorManager.kPrimaryColor
                      : ColorManager.kGreyColor,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Text(
            text,
            style: GoogleFonts.baloo2(
              color: ColorManager.kWhiteColor,
              fontSize: FontSize.f24,
            ),
          ),
        ),
      ),
    );
  }
}
