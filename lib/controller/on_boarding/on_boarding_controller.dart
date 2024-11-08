import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/core/resources/const_value.dart';
import 'package:quiz/core/resources/routes_manager.dart';

class OnBoardingController {
  int currentPositionPage = 0;

  //next
  late StreamController<int> streamControllerDotIndicator;
  late Sink<int> inPutDataDotIndicator;
  late Stream<int> outPutDataDotIndicator;
  //start
  late StreamController<int> streamControllerStratText;
  late Sink<int> inPutDataStartText;
  late Stream<int> outPutDataStartText;

  late PageController onBoardingPageviewController;

  bool isTappedDotIndicator = false;

  OnBoardingController() {
    streamControllerDotIndicator = StreamController();
    inPutDataDotIndicator = streamControllerDotIndicator.sink;
    outPutDataDotIndicator = streamControllerDotIndicator.stream;
    inPutDataDotIndicator.add(currentPositionPage);

    streamControllerStratText = StreamController();
    inPutDataStartText = streamControllerStratText.sink;
    outPutDataStartText = streamControllerStratText.stream;
    inPutDataStartText.add(currentPositionPage);

    onBoardingPageviewController =
        PageController(initialPage: currentPositionPage);
  }

  void onTapDotIndicator(int indexPosition) {
    currentPositionPage = indexPosition;
    inPutDataDotIndicator.add(currentPositionPage);
    inPutDataStartText.add(currentPositionPage);

    onBoardingPageviewController.animateToPage(currentPositionPage,
        duration: const Duration(seconds: 3), curve: Easing.linear);
  }

  void onTapNext(BuildContext context) {
    if (currentPositionPage == ConstValue.onBoardingListConst.length - 1) {
      onTapSkip(context: context);
    } else {
      currentPositionPage++;
    }
    onBoardingPageviewController.animateToPage(currentPositionPage,
        duration: const Duration(microseconds: 400), curve: Curves.linear);
    inPutDataDotIndicator.add(currentPositionPage);
    inPutDataStartText.add(currentPositionPage);
  }

  void onTapSkip({required BuildContext context}) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      RoutesName.kLoginScreen,
      (route) => false,
    );
  }

  void onDispose() {
    inPutDataDotIndicator.close();
    streamControllerDotIndicator.close();
    inPutDataStartText.close();
    streamControllerStratText.close();
    streamControllerDotIndicator.close();
    streamControllerStratText.close();
  }
}
