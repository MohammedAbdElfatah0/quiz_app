import 'package:flutter/material.dart';
import 'package:quiz/views/login/screen/Login_screen.dart';
import 'package:quiz/views/on_boarding/screen/on_boarding_view.dart';
import 'package:quiz/views/splach/screen/splach_view.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplachScreen: (context) => const SplachView(),
    RoutesName.kOnBoardingScreen: (context) => const OnBoardingView(),
    RoutesName.kLoginScreen: (context) => const LoginScreen(),
  };
}

class RoutesName {
  static const String kSplachScreen = '/kSplachScreen';
  static const String kOnBoardingScreen = '/kOnBoarding';
  static const String kLoginScreen = '/login';
}
