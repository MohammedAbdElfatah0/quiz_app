import 'dart:async';

class QiuzScreenController {
  List<String> option = ['1999', '1955', '1978', '1998'];

  int groupValueIndex = -1;
  late StreamController<int> streamControllerGroupValueIndex;
  late Sink<int> inputDataGroupValue;
  late Stream<int> outputDataGroupValue;
  QiuzScreenController() {
    streamControllerGroupValueIndex = StreamController();
    inputDataGroupValue = streamControllerGroupValueIndex.sink;
    outputDataGroupValue =
        streamControllerGroupValueIndex.stream.asBroadcastStream();
    inputDataGroupValue.add(groupValueIndex);
  }
  void onTapAtItemRadio(int index) {
    groupValueIndex = index;
    inputDataGroupValue.add(groupValueIndex);
  }

  void onDispose() {
    streamControllerGroupValueIndex.close();
    inputDataGroupValue.close();
  }
}
