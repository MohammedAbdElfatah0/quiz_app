class OnBoardingScreenModel {
  String? _onBoardingImage;
  String? _onBoardingTitle;
  String? _onBoardingSubTitle;

  OnBoardingScreenModel({
    required String onBoardingImage,
    required String onBoardingTitle,
    required String onBoardingSubTitle,
  }) {
    _onBoardingTitle = onBoardingTitle;
    _onBoardingImage = onBoardingImage;
    _onBoardingSubTitle = onBoardingSubTitle;
  }
  get onBoardingTitle => _onBoardingTitle;

  set onBoardingTitle(value) => _onBoardingTitle = value;

  get onBoardingImage => _onBoardingImage;

  set onBoardingImage(value) => _onBoardingImage = value;

  get onBoardingSubTitle => _onBoardingSubTitle;

  set onBoardingSubTitle(value) => _onBoardingSubTitle = value;
}
