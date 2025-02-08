import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz/core/resources/const_value.dart';
import 'package:quiz/core/resources/routes_manager.dart';

class QiuzScreenController {
  int groupValueIndex = -1;
  late StreamController<int> streamControllerGroupValueIndex;
  late Sink<int> inputDataGroupValue;
  late Stream<int> outputDataGroupValue;

  late StreamController<bool> streamControllerButtonStatus;
  late Sink<bool> inputDataButtonStatus;
  late Stream<bool> isActiveOutputStream;
  bool isActive = false;

  int countQuestion = 0;
  int questionNow = 0;

  int conterTimerNow = 0;
  bool animationStatus = true;
  List<int> lsitCorrectAnswer = [];
  late AnimationController animationController;
  double animationProgressPercent = 0.0;
  Tween<double> tween = Tween(begin: 0.0, end: 1.0);
  late BuildContext _context;

  late StreamController<int> streamControllertime;
  late Sink<int> inputDataStreamTime;
  late Stream<int> outPutStreamTime;

  late StreamController<int> streamControllertNextQuestion;
  late Sink<int> inputDataStreamNextQuestion;
  late Stream<int> outPutStreamNextQuestion;

  late StreamController<double> streamControllerAnimationProgress;
  late Sink<double> inputPutAnimationProgress;
  late Stream<double> outPutAnimationProgress;

  QiuzScreenController(SingleTickerProviderStateMixin vsync, context) {
    _context = context;
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(
        seconds: 5,
      ),
    );
    countQuestion = ConstValue.questionList.length;
    streamControllerGroupValueIndex = StreamController();
    inputDataGroupValue = streamControllerGroupValueIndex.sink;
    outputDataGroupValue =
        streamControllerGroupValueIndex.stream.asBroadcastStream();
    inputDataGroupValue.add(groupValueIndex);
//is actrive
    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream =
        streamControllerButtonStatus.stream.asBroadcastStream();
    inputDataButtonStatus.add(isActive);
//timer
    streamControllertime = StreamController();
    inputDataStreamTime = streamControllertime.sink;
    outPutStreamTime = streamControllertime.stream.asBroadcastStream();
    inputDataStreamTime.add(conterTimerNow);
    //next Question
    streamControllertNextQuestion = StreamController();
    inputDataStreamNextQuestion = streamControllertNextQuestion.sink;
    outPutStreamNextQuestion =
        streamControllertNextQuestion.stream.asBroadcastStream();
    inputDataStreamNextQuestion.add(questionNow);

    streamControllerAnimationProgress = StreamController();
    inputPutAnimationProgress = streamControllerAnimationProgress.sink;
    outPutAnimationProgress =
        streamControllerAnimationProgress.stream.asBroadcastStream();
    inputPutAnimationProgress.add(animationProgressPercent);

    makeCounterTimerNow();
  }

  void forwardAnimation() {
    animationController.reset();
    animationController.forward();
    animationController.addListener(() {
      animationProgressPercent = tween.evaluate(animationController);
      inputDataStreamTime.add((animationProgressPercent * 5).toInt());
      inputPutAnimationProgress.add(animationProgressPercent);
    });
  }

  void restartAnimation() {
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        nextQuestion();
      }
    });
  }

  void makeCounterTimerNow() {
    forwardAnimation();
    inputDataStreamTime.add((animationProgressPercent * 5).toInt());
  }

  void goToAnswerScreen() {
    Navigator.of(_context).pushReplacementNamed(RoutesName.kAnswerScreen);
  }

  void nextQuestion() {
    if (questionNow == lsitCorrectAnswer.length) {
      lsitCorrectAnswer.add(groupValueIndex);
    } else {
      lsitCorrectAnswer[questionNow] = groupValueIndex;
    }
    groupValueIndex = -1;
    inputDataGroupValue.add(groupValueIndex);
    if (questionNow >= countQuestion - 1) {
      // inputPutAnimationProgress.add(animationProgressPercent);
      goToAnswerScreen();
    } else {
      questionNow++;
      makeCounterTimerNow();
    }
    inputDataStreamNextQuestion.add(questionNow);
  }

  void onTapAtItemRadio(int index) {
    groupValueIndex = index;
    if (questionNow == lsitCorrectAnswer.length) {
      lsitCorrectAnswer.add(groupValueIndex);
    } else {
      lsitCorrectAnswer[questionNow] = groupValueIndex;
    }
    for (var i in lsitCorrectAnswer) {
      print(i);
    }
    inputDataGroupValue.add(groupValueIndex);
    if (groupValueIndex != -1) {
      isActive = true;
    } else {
      isActive = false;
    }
    inputDataButtonStatus.add(isActive);
  }

  void onDispose() {
    streamControllerGroupValueIndex.close();
    inputDataGroupValue.close();
    streamControllerButtonStatus.close();
    inputDataButtonStatus.close();
    streamControllertime.close();
    inputDataStreamTime.close();
    streamControllerAnimationProgress.close();
    inputPutAnimationProgress.close();
    streamControllertNextQuestion.close();
    inputDataStreamNextQuestion.close();

    animationController.dispose();
  }
}
