import 'dart:async';

import 'package:quiz/core/resources/const_value.dart';

class QiuzScreenController {
  List<String> option = ['1999', '1955', '1978', '1998'];

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
  late StreamController<int> streamControllertime;
  late Sink<int> inputDataStreamTime;
  late Stream<int> outPutStreamTime;

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
    makeCounterTimerNow();
  }

  void makeCounterTimerNow() {
    for (int i = 0; i < 30; i++) {
      Future.delayed(
        Duration(seconds: i),
        () {
          conterTimerNow = i;
          inputDataStreamTime.add(conterTimerNow);
        },
      );
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
