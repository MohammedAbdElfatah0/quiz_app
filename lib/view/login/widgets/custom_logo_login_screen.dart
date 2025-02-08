import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/core/resources/color_manager.dart';
import 'package:quiz/core/resources/font_managers.dart';
import 'package:quiz/core/resources/strings_values.dart';

class CustomLogoLoginScreen extends StatelessWidget {
  const CustomLogoLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(

      StringsValues.kTextLogo,
      style: GoogleFonts.montserrat(
        height: .7,
          fontSize: FontSize.f200, color: ColorManager.kPrimaryColor),
    );
  }
}
