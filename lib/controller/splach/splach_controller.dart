import 'package:flutter/material.dart';
import 'package:quiz/core/resources/routes_manager.dart';

class SplachController {
  static void goToOnBoardingView(BuildContext _) {
    Navigator.pushNamed(_, RoutesName.kOnBoardingScreen);
  }
}
