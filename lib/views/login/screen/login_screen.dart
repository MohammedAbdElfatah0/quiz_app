import 'package:flutter/material.dart';
import 'package:quiz/controller/Logun/login_controller.dart';
import 'package:quiz/core/resources/assets_images_manager.dart';
import '../../../core/resources/height_managers.dart';
import '../widget/custem_button_login_screen.dart';
import '../widget/custem_text_enter_your_name.dart';
import '../widget/custem_text_field_login_screen.dart';
import '../widget/custem_text_logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginController _loginScreenController;
  @override
  void initState() {
    // TODO: implement initState
    _loginScreenController = LoginController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _loginScreenController.onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsImagesManager.kLoginScreen),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustemTextLogo(),
            Column(
              children: [
                const CustemTextEnterYourName(),
                const SizedBox(height: HeightManagers.h10),
                CustemTextFieldLoginScreen(
                  controllerName: _loginScreenController.controllerNameTextField,
                  validation: (value) {
                    return _loginScreenController.validationName(value);
                  },
                  onChange: (value) {
                    _loginScreenController.controllerNameTextField.text = value;
                    _loginScreenController.onChangeTextFormField();
                  },
                  keyForm: _loginScreenController.keyForm,
                ),
              ],
            ),
            CustemButtonLoginScreen(
              isActiveOutputStream: _loginScreenController.isActiveOutputStream,
              onPressed: () {
                _loginScreenController.navigatotToQuizApp(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
