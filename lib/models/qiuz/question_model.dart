class QuestionModel {
  late String _question;
  late List<String> _listOfAnswer;
  late int _correctAnswer;
  QuestionModel({
    required String question,
    required List<String> listOfAnswer,
    required dynamic correctAnswer,
  })  : _question = question,
        _listOfAnswer = listOfAnswer,
        _correctAnswer = correctAnswer;

  String get question => _question;
  set question(String question) => _question = question;

  List<String> get listOfAnswer => _listOfAnswer;
  set listOfAnswer(List<String> listOfAnswer) => _listOfAnswer = listOfAnswer;

  int get correctAnswer => _correctAnswer;
  set correctAnswer(int correctAnswer) => _correctAnswer = correctAnswer;
}
