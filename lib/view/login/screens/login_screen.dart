import 'package:flutter/material.dart';
import 'package:quiz/controller/login/login_screen_controller.dart';
import 'package:quiz/core/resources/assets_values_manager.dart';
import 'package:quiz/core/resources/height_manger.dart';
import 'package:quiz/core/resources/padding_values_manager.dart';
import 'package:quiz/core/resources/strings_values.dart';
import 'package:quiz/view/login/widgets/custom_text_enter_your_name_login_screen.dart';
import 'package:quiz/view/login/widgets/custom_text_form_field_name_login_screen.dart';

import '../../../core/widgets/custom_material_button.dart';
import '../widgets/custom_logo_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginScreenController _loginScreenController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginScreenController = LoginScreenController();
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
        padding:
            const EdgeInsets.symmetric(horizontal: PaddingValuesManagers.p24),
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsValuesManager.kLoginScreenImage),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CustomLogoLoginScreen(),
              Column(
                children: [
                  const CustomTextEnterYourNameLoginScreen(),
                  const SizedBox(
                    height: HeightValuesManager.h10,
                  ),
                  CustomTextFormFieldNameLoginScreen(
                    validator: (value) {
                      return _loginScreenController.validateName(value);
                    },
                    onChanged: (value) {

                      _loginScreenController.onChangedTextFormField();
                    },
                    keyForm: _loginScreenController.formKeyName,
                    controllerName:
                        _loginScreenController.controllerNameTextField,
                  ),
                ],
              ),
              CustomStartButtonLoginScreen(
                text: StringsValues.kStart,
                isActiveOutputStream:
                    _loginScreenController.isActiveOutputStream,
                onPressed: () {
                  _loginScreenController.navigateToQuizApp(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
