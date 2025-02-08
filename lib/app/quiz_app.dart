import 'package:flutter/material.dart';
import 'package:quiz/core/resources/font_managers.dart';
import 'package:quiz/core/resources/routes_manager.dart';
class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RoutesManager.routes,
      theme: ThemeData(fontFamily: FontsName.kFontMontserrat),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kSplashScreen,
    );
  }
}
