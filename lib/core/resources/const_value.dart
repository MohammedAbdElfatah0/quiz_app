import 'package:quiz/core/resources/assets_images_manager.dart';
import 'package:quiz/core/resources/strings_value.dart';

import '../../models/on_bording/onboarding_screen_model.dart';

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
}
