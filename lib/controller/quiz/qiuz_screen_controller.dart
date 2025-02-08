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

  QiuzScreenController() {
    countQuestion = ConstValue.questionList.length;
    streamControllerGroupValueIndex = StreamController();
    inputDataGroupValue = streamControllerGroupValueIndex.sink;
    outputDataGroupValue =
        streamControllerGroupValueIndex.stream.asBroadcastStream();
    inputDataGroupValue.add(groupValueIndex);

    streamControllerButtonStatus = StreamController();
    inputDataButtonStatus = streamControllerButtonStatus.sink;
    isActiveOutputStream =
        streamControllerButtonStatus.stream.asBroadcastStream();
    inputDataButtonStatus.add(isActive);
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
  }
}
