import 'dart:async';

import 'package:quiz/core/resources/const_value.dart';

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
  late StreamController<int> streamControllertime;
  late Sink<int> inputDataStreamTime;
  late Stream<int> outPutStreamTime;

  late StreamController<int> streamControllertNextQuestion;
  late Sink<int> inputDataStreamNextQuestion;
  late Stream<int> outPutStreamNextQuestion;

  late StreamController<bool> streamControllerAnimationStatus;
  late Sink<bool> inputDataBAnimationStatus;
  late Stream<bool> outPutStreamAnimationStatus;

  QiuzScreenController() {
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

    streamControllerAnimationStatus = StreamController();
    inputDataBAnimationStatus = streamControllerAnimationStatus.sink;
    outPutStreamAnimationStatus =
        streamControllerAnimationStatus.stream.asBroadcastStream();
    inputDataBAnimationStatus.add(animationStatus);

    makeCounterTimerNow();
  }

  void makeCounterTimerNow() {
    for (int i = 0; i < 31; i++) {
      Future.delayed(
        Duration(seconds: i),
        () {
          conterTimerNow = i;
          inputDataStreamTime.add(conterTimerNow);
          if (i == 30) {
            nextQuestion();
          }
        },
      );
    }

    inputDataStreamNextQuestion.add(questionNow);
  }

  void nextQuestion() {
    if (questionNow >= countQuestion - 1) {
      animationStatus = false;
      inputDataBAnimationStatus.add(animationStatus);
      print("con't increment");
    } else {
      questionNow++;
      makeCounterTimerNow();
      print("increment");
    }
  }

  void onTapAtItemRadio(int index) {
    groupValueIndex = index;
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
    inputDataStreamTime.close();
    streamControllertime.close();
  }
}
