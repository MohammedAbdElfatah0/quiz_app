import 'package:quiz/core/resources/const_value.dart';

class AnswerScreenController {
  late Map studentAnswer;
  List<bool> answer = [];
  void getStudentAnswer(Map studentAnswer) {
    this.studentAnswer = studentAnswer;
  }

  void compereAnswer() {
    answer.clear();
    for (var i = 0; i < ConstValue.questionList.length; i++) {
      bool an = ConstValue.questionList[i].correctAnswer ==
          studentAnswer['lsitCorrectAnswer'][i];
      answer.add(an);
    }
    print(answer);
  }

  int getCountAnswerCorrect() {
    int count = 0;
    for (bool i in answer) {
      i == true ? count++ : count;
    }
    return count;
  }
}
