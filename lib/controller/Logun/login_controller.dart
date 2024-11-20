import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/core/resources/routes_manager.dart';

class LoginController {
  late GlobalKey<FormState> keyForm;
  bool buttonisActive = false;
  late StreamController<bool> streamControllerButtonStatus;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;
  late TextEditingController controllerNameTextField;

  LoginController() {
    keyForm = GlobalKey<FormState>();
    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream = streamControllerButtonStatus.stream;
    controllerNameTextField = TextEditingController();
    inputDataButtonStatus.add(buttonisActive);
  }
  String? validationName(String? value) {
    if (value!.isEmpty) {
      return 'not empty';
    } else if (value.length < 5) {
      return 'short name';
    } else
      return null;
  }

  void onChangeTextFormField() {
    if (keyForm.currentState!.validate()) {
      print('good man pro');
      buttonisActive = true;
    } else {
      buttonisActive = false;
    }
    inputDataButtonStatus.add(buttonisActive);
  }

  onDispose() {
    inputDataButtonStatus.close();
    streamControllerButtonStatus.close();
    controllerNameTextField.dispose();
  }

  void navigatotToQuizApp(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, RoutesName.kQuizScreen, (route) => false,
        arguments: controllerNameTextField.text);
  }
}
