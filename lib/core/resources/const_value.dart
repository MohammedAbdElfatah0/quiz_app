import 'package:quiz/core/resources/assets_images_manager.dart';
import 'package:quiz/core/resources/strings_value.dart';

import '../../models/on_bording/onboarding_screen_model.dart';
import '../../models/qiuz/question_model.dart';

class ConstValue {
  static List<OnBoardingScreenModel> onBoardingListConst = [
    OnBoardingScreenModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage0,
        onBoardingTitle: StringsValue.kSynonymsforQuiz,
        onBoardingSubTitle: StringsValue.kSynonymsforQuiz),
    OnBoardingScreenModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage1,
        onBoardingTitle: StringsValue.kAntonymsOfQUIZ,
        onBoardingSubTitle: StringsValue.kAntonymsOfQUIZSunTitle),
    OnBoardingScreenModel(
        onBoardingImage: AssetsImagesManager.onBoardingImage2,
        onBoardingTitle: StringsValue.kCoolQuiz,
        onBoardingSubTitle: StringsValue.kCoolQuizSubTitile)
  ];

  static List<QuestionModel> questionList = [
    QuestionModel(
        question: "What is the capital of France?",
        listOfAnswer: ["Paris", "London", "Berlin", "Madrid"],
        correctAnswer: 0),
    QuestionModel(
        question: "What is 2 + 2?",
        listOfAnswer: ["3", "4", "5", "6"],
        correctAnswer: 1),
    QuestionModel(
        question: "What is the largest planet in our solar system?",
        listOfAnswer: ["Earth", "Mars", "Jupiter", "Saturn"],
        correctAnswer: 2)
  ];
}
