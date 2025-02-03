import 'package:flutter/material.dart';
import 'package:quiz/core/resources/font_manager.dart';
import '../core/resources/routes_manager.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RoutesManager.routes,
      theme: ThemeData(fontFamily: FontManager.kFontMananger),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.kQuizScreen,
    );
  }
}
