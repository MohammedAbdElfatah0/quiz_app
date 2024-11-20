import 'package:flutter/material.dart';
import 'package:quiz/core/resources/assets_images_manager.dart';
import '../widget/custem_button_login_screen.dart';
import '../widget/custem_text_logo.dart';
import '../widget/custem_text_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsImagesManager.kLoginScreen),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustemTextLogo(),
            const CustemTextandTextFieldLoginScreen(),
            CustemButtonLoginScreen(
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
