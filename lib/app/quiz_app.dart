import 'package:flutter/material.dart';
import 'package:quiz/core/resources/font_mananger.dart';
import 'package:quiz/views/splach/screen/splach_view.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: FontMananger.kFontMananger),
      debugShowCheckedModeBanner: false,
      home: const SplachView(),
    );
  }
}
